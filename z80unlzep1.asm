; Decompression routine for LZEXE-compressed streams
;
; Copyright © 2020 Pedro Gimeno Fortea
;
; This is a decompressor for LZEXE-compressed streams. Copying, distribution
; and modification of this package or parts of it are permitted, under two
; conditions: that any copyright notices and this notice are preserved, and
; that any modified version is clearly marked as such. This package is offered
; as-is, without any warranty express or implied.
;
; Input: HL=source, DE=destination
; Output: HL=last source address read+1 ( = initial source address + length of compressed stream)
;       : DE=last dest address written+1 ( = initial destination address + length of decompressed stream)
; Clobbers: AF, AF', BC

; Optimizing for speed makes the getbit code be inlined, at the cost of
; decompressor memory (145 bytes as of this writing)
; Optimizing for size makes the code a bit slower due to the calls to getbit
; (106 bytes as of this writing)

;	DEFINE OPTIMIZE_FOR_SIZE


getbit_code	macro
		; Get the next bit from the bitstream into the carry flag
		;local	gotbit

		srl	b
		rr	c
		ex	af,af'
		dec	a
		jp	nz,.gotbit
	IFNDEF OPTIMIZE_FOR_SIZE
	ELSE
initbits:
	ENDIF
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl
		ld	a,16
.gotbit:
		ex	af,af'
		endm

	IFNDEF OPTIMIZE_FOR_SIZE
getbit		macro
		getbit_code
		endm
	ELSE
getbit		macro
		call	getbit_routine
		endm
	ENDIF

unlze:

		;local	mainloop
		;local	not_literal
		;local	long_match
		;local	got_length
		;local	clean_up_and_loop
		;local	clean_up_and_ret

	IFNDEF OPTIMIZE_FOR_SIZE
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl
		ld	a,16
		ex	af,af'
	ELSE
		call	initbits
	ENDIF

		; Bitstream codes:
		; 1 = copy next byte verbatim
		; 00cc = next 2 bits are count reduced by 2,
		;        i.e. cc=00 represents 2 and cc=11 represents 5;
		;        the next byte is the offset in two's complement
		; 01 = get little endian word from byte stream
		;        where the low byte is the lower 8 bits of the
		;        offset, and the high byte is encoded as follows:
		;                       oooooxxx
		;        where ooooo are bits 8-12 of the offset
		;        and xxx is either length - 2 if nonzero,
		;        or 0 to read the next byte as an extended length
		;        or code. If that next code is 0, it means end of
		;        the stream. If that code is 1, it should be ignored
		;        (it's used for avoiding going off a segment in x86,
		;        so it can handle files > 64K). If that code is 2 or
		;        more, the actual length is the code + 1.
		jr	mainloop

literal:
		inc	bc
		ldi

mainloop:	getbit
		jp	c,literal
		; 1 = copy next byte verbatim

not_literal:	getbit
		jp	c,long_match

		; Short match
		xor	a
		getbit
		rla
		getbit
		rla
		inc	a

		push	bc
		ld	c,a
		ld	a,(hl)	; Offset in two's complement (always negative)
		inc	hl
		push	hl
		ld	b,0
		add	a,e
		ld	l,a
		ld	a,-1
		adc	a,d
		ld	h,a

copy_match:	ldir
		ldi
		pop	hl

clean_up_and_loop:
		pop	bc
		jp	mainloop

long_match:	push	bc
		ld	c,(hl)
		inc	hl
		ld	a,(hl)
		rrca
		rrca
		rrca
		or	11100000b
		ld	b,a
		ld	a,(hl)
		inc	hl
		and	7
		jp	nz,got_length
		or	(hl)
		jr	z,clean_up_and_ret	; less than 1, must be 0, exit
		inc	hl

		; Check special codes
		dec	a
		jr	z,clean_up_and_loop	; equal to 1, ignore
		; Actual lenght is A + 1, but we add 2 when falling through
		; so we compensate here:
		; Fall through

got_length:	; Apply offset
		push	hl
		ld	h,d
		ld	l,e
		add	hl,bc
		ld	c,a
		ld	b,0
		inc	bc
		jp	copy_match

clean_up_and_ret:
		pop	bc
		ret

	IFNDEF OPTIMIZE_FOR_SIZE
	ELSE
getbit_routine:	getbit_code
		ret
	ENDIF

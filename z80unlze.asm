; Decompression routine for LZEXE-compressed streams, v1.1
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

; Changes:
;  1.1   156/112 bytes 11-06-2020 : Moved getbit_routine to bottom
;  1.1   156/112 bytes 10-06-2020 : Very tiny optimization; also optimizing for size saves 10 more bytes
;  1.0   157/122 bytes 09-06-2020 : Original version

; Set OPTIMIZE to either SPEED or SIZE.
; Optimizing for speed makes the getbit code be inlined, at the cost of
; decompressor memory (156 bytes as of this writing).
; Optimizing for size (112 bytes as of this writing) makes the code a bit
; slower due to the calls to getbit and the relative jumps.

SIZE		equ	0
SPEED		equ	1

; Change this to select what to optimize for
		IF !defined OPTIMIZE
OPTIMIZE	equ	SPEED
		ENDIF


getbit_code	macro
		; Get the next bit from the bitstream into the carry flag
		local	gotbit

		srl	b
		rr	c
		ex	af,af'
		dec	a
		IF	OPTIMIZE=SPEED
		jp	nz,gotbit
		ELSE
		jr	nz,gotbit
		ENDIF
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl
		ld	a,16
gotbit:
		ex	af,af'
		endm

unlze		proc

		IF OPTIMIZE=SPEED

		; Optimize for speed

getbit		macro
		getbit_code
		endm

j		macro	x
		jp	x
		endm

jc		macro	x,y
		jp	x,y
		endm

		ELSE

		; Optimize for size

		local	getbit_routine
		; moved getbit_routine to bottom

getbit		macro
		call	getbit_routine
		endm

j		macro	x
		jr	x
		endm

jc		macro	x,y
		jr	x,y
		endm

		ENDIF

		local	mainloop
		local	not_literal
		local	long_match
		local	got_length
		local	clean_up_and_loop
		local	clean_up_and_ret

		ld	a,16
		ex	af,af'
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl

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

mainloop:	getbit
		jc	nc,not_literal
		; 1 = copy next byte verbatim
		ld	a,(hl)
		inc	hl
		ld	(de),a
		inc	de
		j	mainloop

not_literal:	getbit
		jc	c,long_match

		; Short match
		getbit
		rla
		getbit
		rla
		and	3
		add	a,2	; Length

		push	bc
		ld	c,a
		ld	a,(hl)	; Offset in two's complement (always negative)
		inc	hl
		push	hl
		ld	b,0	; Length in BC
		add	a,e	; HL = DE + offset (offset is always negative)
		ld	l,a
		ld	a,-1
		adc	a,d
		ld	h,a
		ldir
		pop	hl
		pop	bc
		j	mainloop

long_match:	push	bc
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		ld	a,b
		; Carry is assumed to be set here! (saves 1 cycle)
		rr	b
		sra	b
		sra	b

		inc	hl
		and	7
		jc	nz,got_length
		ld	a,(hl)
		inc	hl

		; Check special codes
		cp	1
		jc	z,clean_up_and_loop	; equal to 1, ignore
		jc	c,clean_up_and_ret	; less than 1, must be 0, exit
		; Actual lenght is A + 1, but we add 2 when falling through
		; so we compensate here:
		dec	a
		; Fall through

got_length:	; Apply offset
		push	hl
		ld	h,d
		ld	l,e
		add	hl,bc	; HL = DE + offset (negative)
		ld	c,a
		ld	b,0
		inc	c	; This one never overflows so inc only C
		inc	bc	; This one could overflow so inc as a pair
		ldir
		pop	hl

clean_up_and_loop:
		pop	bc
		j	mainloop

clean_up_and_ret:
		pop	bc
		ret

		IF OPTIMIZE=SPEED
		ELSE
getbit_routine:	getbit_code
		ret
		ENDIF

		endp

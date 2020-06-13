; Decompression routine for LZEXE-compressed streams, v1.1p2
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
;  1.1p2 133/ 88 bytes 13-06-2020 : Removed suppot for x86 segment by uniabis.
;  1.1p1 137/ 92 bytes 11-06-2020 : Moved getbit_routine to bottom, some optimizations by uniabis.
;  1.1p1 137/ 92 bytes 11-06-2020 : Moved getbit_routine to bottom, some optimizations by uniabis.
;  1.1   156/112 bytes 10-06-2020 : Very tiny optimization; also optimizing for size saves 10 more bytes
;  1.0   157/122 bytes 09-06-2020 : Original version

; Set OPTIMIZE to either SPEED or SIZE.
; Optimizing for speed makes the getbit code be inlined, at the cost of
; decompressor memory (137 bytes as of this writing).
; Optimizing for size ( 92 bytes as of this writing) makes the code a bit
; slower due to the calls to getbit and the relative jumps.

SIZE		equ	0
SPEED		equ	1

; Change this to select what to optimize for
		IF	!defined OPTIMIZE
OPTIMIZE	equ	SPEED
		ENDIF

REMOVE_SUPPORT_FOR_SEGMENT	equ	1

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
initbits:
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

		IF	OPTIMIZE=SPEED

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

		local	one_literal
		local	mainloop
		local	not_literal
		local	copy_match
		local	long_match
		local	got_length
		local	clean_up_and_loop
		local	clean_up_and_ret
		local	initbits

		IF	OPTIMIZE=SPEED
		ld	c,(hl)
		inc	hl
		ld	b,(hl)
		inc	hl
		ld	a,16
		ex	af,af'
		ELSE
		call	initbits
		ENDIF

		jr	mainloop

		; 1 = copy next byte verbatim
one_literal:	inc	bc
		ldi

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
		jc	c,one_literal

not_literal:	getbit
		jc	c,long_match

		; Short match
		xor	a
		getbit
		rla
		getbit
		rla

		push	bc
		push	hl

		ld	l,(hl)	; Offset in two's complement (always negative)
		ld	h,-1


		; Length-2 in A
		; Offset in HL
copy_match:	add	hl,de	; HL = DE + offset (offset is always negative)
		inc	a
		ld	c,a
		ld	b,0
		ldir
		ldi
		pop	hl


		IF	!defined REMOVE_SUPPORT_FOR_SEGMENT

clean_up_and_loop:
		inc	hl
		pop	bc

		j	mainloop

clean_up_and_ret:
		inc	hl
		pop	bc

		ELSE

clean_up_and_ret:

		inc	hl
		pop	bc

		jc	nz,mainloop

		ENDIF


		ret

long_match:	push	bc
		ld	c,(hl)
		inc	hl
		ld	a,(hl)
		ld	b,a
		; Carry is assumed to be set here! (saves 1 cycle)
		rr	b
		sra	b
		sra	b

		and	7
		jc	nz,got_length
		inc	hl
		or	(hl)
		; Check special codes
		jr	z,clean_up_and_ret	; less than 1, must be 0, exit

		dec	a


		IF	!defined REMOVE_SUPPORT_FOR_SEGMENT

		jr	z,clean_up_and_loop	; equal to 1, ignore

		ENDIF


		; Actual lenght is A + 1, but we add 2 when falling through
		; so we compensate here:
		; Fall through

got_length:	; Offset in BC
		push	hl
		ld	l,c
		ld	h,b
		j	copy_match

		IF	OPTIMIZE=SPEED
		ELSE
getbit_routine:	getbit_code
		ret
		ENDIF

		endp

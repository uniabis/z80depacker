;	Copyright (c) 2003-2004,2022 Arjan Bakker
;	
;	Permission is hereby granted, free of charge, to any person obtaining a copy of 
;	this software and associated documentation files (the "Software"), to deal in 
;	the Software without restriction, including without limitation the rights to 
;	use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of 
;	the Software, and to permit persons to whom the Software is furnished to do so, 
;	subject to the following conditions:
;	
;	The above copyright notice and this permission notice shall be included in all 
;	copies or substantial portions of the Software.
;	
;	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
;	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS 
;	FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR 
;	COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER 
;	IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
;	CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

; File: unbitbuster2
;
;	The bitbuster module gives you depack support for data packed
;	using the bitbuster algorithm.
;
; COPYRIGHT & CREDITS:
;	This module has been released by Arjan Bakker under the MIT License;
;	please see the top of the source file(s) for the full copyright statement.

; modified by uniabis
;  support single block only

unbitbuster2:
	;inc	hl	; block number
	;inc	hl	; block length low
	;inc	hl	; block length high

.block:
	scf

	jr	.fill_bitbuffer_inline

.get_offset:

	ld	e, (hl)
	inc	hl

	bit	7, e
	jr	z, .offsetbits7

	IFNDEF	BITBUSTER_OPTIMIZE_SPEED

	call	.get_bit
	call	.rld_and_get_bit
	call	.rld_and_get_bit
	call	.rld_and_get_bit

	ELSE

	add	a, a
	call	z, .fill_bitbuffer
	rl	d

	add	a, a
	call	z, .fill_bitbuffer
	rl	d

	add	a, a
	call	z, .fill_bitbuffer
	rl	d

	add	a, a
	call	z, .fill_bitbuffer

	ENDIF

	jr	c, .calc_source
	res	7, e

.offsetbits7:
	scf

.calc_source:

	ex	(sp), hl

	push	hl

	sbc	hl, de

	pop	de

	ldir
	ldi

	pop	hl

	add	a, a
	jr	nc, .literal
	jr	nz, .get_length

.fill_bitbuffer_inline:
	ld	a, (hl)
	inc	hl
	adc	a, a
	jr	c, .get_length

.literal:
	ldi

.loop:
	add	a, a
	jr	nc, .literal
	jr	z, .fill_bitbuffer_inline

.get_length:

	push	de
	ld	bc, 1
	ld	d, b

.get_length_loop:

	IFNDEF	BITBUSTER_OPTIMIZE_SPEED

	call	.get_bit
	jr 	nc, .get_offset
	call	.get_bit

	ELSE

	add	a, a
	call	z, .fill_bitbuffer
	jr 	nc, .get_offset
	add	a, a
	call	z, .fill_bitbuffer

	ENDIF

	rl	c
	rl	b
	jr	nc, .get_length_loop

	pop	de
	;ret

	IFNDEF	BITBUSTER_OPTIMIZE_SPEED

.rld_and_get_bit
	rl	d
.get_bit:
	add	a, a
	ret	nz

	ENDIF

.fill_bitbuffer:
	ld	a, (hl)
	inc	hl
	adc	a, a
	ret


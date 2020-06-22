; LZEee depacker for Z80 sjasm (lzee  with f5 option) 87bytes
;
; license:zlib license
;
; Copyright (c) 2020 uniabis
;
; This software is provided 'as-is', without any express or implied
; warranty. In no event will the authors be held liable for any damages
; arising from the use of this software.
;
; Permission is granted to anyone to use this software for any purpose,
; including commercial applications, and to alter it and redistribute it
; freely, subject to the following restrictions:
;
;   1. The origin of this software must not be misrepresented; you must not
;   claim that you wrote the original software. If you use this software
;   in a product, an acknowledgment in the product documentation would be
;   appreciated but is not required.
;
;   2. Altered source versions must be plainly marked as such, and must not be
;   misrepresented as being the original software.
;
;   3. This notice may not be removed or altered from any source
;   distribution.
;

	;DEFINE	OBSOLETED_F4

dlzeee:
		ldi
		scf

getbit1:
		ld	a,(hl)
		inc	hl
		adc	a,a
		jr	c,dlze_lp1n

	;	DUP	2
	;	ldi
	;	add	a
	;	jr	c,dlze_lp1n
	;	EDUP

dlze_lp1:
		ldi
dlze_lp2:
		add	a
		jr	nc,dlze_lp1
		jr	z,getbit1
dlze_lp1n:
		add	a
		jr	c,dlze_far
dlze_near:
		ld	bc,0

		add	a
		call	z,getbit
		rl	c

		add	a
		call	z,getbit
		rl	c

		push	hl
		ld	l,(hl)
		ld	h,-1

dlze_copy:
		inc	c
		add	hl,de
		ldir
		ldi
		pop	hl
		inc	hl
		jr	dlze_lp2

getbit2:
		ld	a,(hl)
		inc	hl
		adc	a,a
		jr	nc,dlze_near

dlze_far:
		jr	z,getbit2
		ex      af, af';'
		ld	a,(hl)
		inc	hl
		push	hl
		ld	l,(hl)
		ld	c,a
		or	7
		rrca
		rrca
		rrca
		ld	h,a
		ld	a,c
		and	7
		jr	nz,dlze_skip

		pop	bc
		inc	bc
		ld	a,(bc)
	IFNDEF	OBSOLETED_F4
		or	a
		ret	z
	ELSE
		sub	1
		ret	c
	ENDIF
		push	bc

dlze_skip:
		ld	b,0
		ld	c,a
		ex      af, af';'
		jr	dlze_copy

getbit:
		ld	a,(hl)
		inc	hl
		adc	a
		ret

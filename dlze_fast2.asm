; lze depacker for Z80 sjasm
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


dlze:
		ldi
		scf
		jr	getbit1

getbit2:
		ld	a,(hl)
		inc	hl
		adc	a,a
		jr	c,dlze_far

dlze_near:
		ld	bc,080h

		add	a
		jr	z,getbit3
		rl	c

		add	a
		jr	nz,dlze_near_end1

getbit3:
		ld	a,(hl)
		inc	hl
		adc	a
		rl	c
		jr	nc,dlze_near_end2
		add	a

dlze_near_end1:
		rl	c
dlze_near_end2:

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

		add	a
		jr	nc,dlze_lp1n
		jr	nz,dlze_lp1

getbit1:
		ld	a,(hl)
		inc	hl
		adc	a,a
		jr	nc,dlze_lp1n

		DUP	1
		ldi
		add	a
		jr	nc,dlze_lp1n
		EDUP

dlze_lp1:
		ldi
		add	a
		jr	z,getbit1
		jr	c,dlze_lp1
dlze_lp1n:
		add	a
		jr	nc,dlze_near
		jr	z,getbit2

dlze_far:
		ex      af, af';'
		ld	a,(hl)
		inc	hl
		push	hl
		ld	l,(hl)
		ld	c,l
		rra
		rr	l
		rra
		rr	l
		rra
		rr	l
		or	0e0h
		ld	h,a
		ld	a,c
		and	7
		jr	nz,dlze_skip

		pop	bc
		inc	bc
		ld	a,(bc)
		sub	1
		ret	c
		push	bc

dlze_skip:
		ld	b,0
		ld	c,a
		ex      af, af';'
		jr	dlze_copy

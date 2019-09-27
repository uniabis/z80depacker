; lzee depacker for Z80 sjasm
;
; license:zlib license
;
; Copyright (c) 2019 uniabis
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

	DEFINE	ALLOW_LDIR_UNROLLING
	DEFINE	ALLOW_INLINE_GETBIT

	IFNDEF	ALLOW_INLINE_GETBIT

	MACRO GET_BIT
		call	getbit
	ENDM

	ELSE

	MACRO	GET_BIT
		add	a
		call	z,getbit
	ENDM

	ENDIF

dlze:
		ld	a,080h
dlze_lp1:
		ldi
dlze_lp2:
		GET_BIT
		jp	c,dlze_lp1

		GET_BIT
		ld	b,0
		jr	c,dlze_far
		ld	c,b

		GET_BIT
		rl	c
		GET_BIT
		rl	c

		push	hl
		ld	l,(hl)
		ld	h,-1

dlze_copy1:
		inc	c
dlze_copy2:
		add	hl,de
	IFNDEF	ALLOW_LDIR_UNROLLING
		inc	bc
		ldir
	ELSE
		ldir
		ldi
	ENDIF
		pop	hl
		inc	hl
		jp	dlze_lp2

dlze_far:
		exa
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
		jr	z,dlze_long
		ld	c,a
		exa
		jp	dlze_copy1
dlze_long:
		exx
		pop	hl
		inc	hl
		ld	a,(hl)
		or	a
		ret	z
		push	hl
		exx
		ld	c,a
		exa
		jp	dlze_copy2

getbit:
	IFNDEF	ALLOW_INLINE_GETBIT
		add	a
		ret	nz
	ENDIF
		ld	a,(hl)
		inc	hl
		adc	a
		ret


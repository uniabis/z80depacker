; LZEee depacker for Z80 sjasm (lzee  with f5 option) 72bytes
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
	;DEFINE	ALLOW_LDIR_UNROLLING
	;DEFINE	ALLOW_INLINE_GETBIT

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

dlzeee:
		ld	a,080h
dlze_lp1:
		ldi
dlze_lp2:
		GET_BIT
		jr	nc,dlze_lp1

		GET_BIT
		jr	c,dlze_far

		ld	c,0
		GET_BIT
		rl	c
		GET_BIT
		rl	c

		push	hl
		ld	l,(hl)
		ld	h,-1

dlze_copy:
		ld	b,0
		inc	c
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
		jr	dlze_lp2

dlze_far:
		ex      af, af';'

		ld	a,(hl)
		or	7
		rrca
		rrca
		rrca
		ld	b,a

		ld	a,(hl)
		inc	hl
		ld	c,(hl)

		and	7
		jr	nz,dlze_skip

		inc	hl
		or	(hl)
		ret	z
	IFNDEF	OBSOLETED_F4
	ELSE
		dec	a
	ENDIF

dlze_skip:
		push	hl
		ld	l,c
		ld	h,b
		ld	c,a
		ex      af, af';'
		jr	dlze_copy

getbit:
	IFNDEF	ALLOW_INLINE_GETBIT
		add	a
		ret	nz
	ENDIF
		ld	a,(hl)
		inc	hl
		adc	a
		ret


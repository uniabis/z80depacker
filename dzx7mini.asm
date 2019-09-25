; zx7mini depacker for Z80 sjasm
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

	;DEFINE INLINE_GETBIT
	;DEFINE BACKWORD

	IFNDEF INLINE_GETBIT

	MACRO	GET_BIT
		call	getbit
	ENDM

	ELSE

	MACRO	GET_BIT
		add	a
		call	z,getbit
	ENDM

	ENDIF



dzx7mini:
		ld	a,080h

copyby:
	IFNDEF BACKWORD
		ldi
	ELSE
		ldd
	ENDIF
mainlo:
		GET_BIT

		jr	nc,copyby

	IFNDEF BACKWORD
		ld	c,1
	ELSE
		ld	bc,1
	ENDIF

lenval:
		GET_BIT

		rl	c
		ret	c

		GET_BIT

		jr	nc,lenval

		push	hl

	IFNDEF BACKWORD

		ld	b,a
		ld	a,e
		sbc	(hl)
		ld	l,a
		sbc	l
		add	d
		ld	h,a
		ld	a,b
		ld	b,0

		ldir

		pop	hl
		inc	hl
	ELSE
		ld	l,(hl)
		ld	h,b

		add	hl,de

		lddr

		pop	hl
		dec	hl
	ENDIF
		jr	mainlo

getbit:
	IFNDEF INLINE_GETBIT
		add	a
		ret	nz
	ENDIF
		ld	a,(hl)
	IFNDEF BACKWORD
		inc	hl
	ELSE
		dec	hl
	ENDIF
		adc	a
		ret

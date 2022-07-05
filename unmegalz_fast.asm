;
;  Speed-optimized MegaLZ decompressor by spke (ver.04p2 06/07/2022, 229 bytes)
;
;  The commonly used "classic" decompressor for MegaLZ is a 110 byte relocatable routine
;  "DEC40.asm" written by Fyrex^MhM in 1998
;
;  This non-relocatable decompressor is more than twice faster than DEC40.asm
;
;  ver.00 by spke (27-31/08/2018, 230 bytes, released @ https://hype.retroscene.org/blog/933.html);
;  ver.01 by spke (31/07/2019, 233(+3) bytes, +4% speed);
;  ver.02 by spke (27/08/2019, +1.5% speed);
;  ver.03 by uniabis & spke (15-17/05/2020, 229(-4) bytes, +2.5% speed);
;  ver.04 by spke (13/01/2021, added full revision history)
;  ver.04p2 by uniabis (06/07/2022, bit faster)
;
;  The data must be compressed using one of the optimal MegaLZ compressors by LVD^NedoPC,
;  either modern "mhmt": https://github.com/lvd2/mhmt
;  or older "megalz": https://web.archive.org/web/20080224212635/http://lvd.nm.ru/MegaLZ/
;
;  The decompression is done in the standard way:
;
;  ld hl,CompressedData
;  ld de,WhereToDecompress
;  call DecompressMegaLZ
;
;  The decompressor only modifies AF, BC, DE, HL and, possibly, IX (see below)
;
;  Drop me an email if you have any comments/ideas/suggestions: zxintrospec@gmail.com
;
;  This software is provided 'as-is', without any express or implied
;  warranty.  In no event will the authors be held liable for any damages
;  arising from the use of this software.
;
;  Permission is granted to anyone to use this software for any purpose,
;  including commercial applications, and to alter it and redistribute it
;  freely, subject to the following restrictions:
;
;  1. The origin of this software must not be misrepresented; you must not
;     claim that you wrote the original software. If you use this software
;     in a product, an acknowledgment in the product documentation would be
;     appreciated but is not required.
;  2. Altered source versions must be plainly marked as such, and must not be
;     misrepresented as being the original software.
;  3. This notice may not be removed or altered from any source distribution.
;

		DEFINE	AllowUsingIX				; adds about 0.5% speed if you can use IX

		MACRO	GET_BIT
			add a : call z,ReloadByte
		ENDM

@DecompressMegaLZ:
		IFDEF	AllowUsingIX
			ld ix,MainLoop
		ENDIF
			ldi : scf

ReloadByte1		ld a,(hl) : inc hl : adc a : jr nc,CASE0xx
			DUP 1
			ldi : add a : jr nc,CASE0xx
			EDUP
;
;  case "1"+BYTE: copy a single literal

CASEc:	 		jr z,ReloadByte1
CASE1:			ldi					; first byte is always copied as literal

;
;  main decompressor loop

MainLoop:		add a : jr c,CASEc		; "1"+BYTE = copy literal
CASE0xx			add a : jr nc,CASE00x
			jr z,ReloadByte2
CASE01x			; "01" could be a 3-byte match or longer match
			add a : jr nc,CASE010

			jr z,ReloadByte4
CASE011:		; "011" are general length matches
			ld bc,1					; BC = 1
			GET_BIT : jr c,ShortLength		; significant speed-up

ReadLogLength		GET_BIT : inc b
			jr nc,ReadLogLength

ReadLength		GET_BIT : rl c
			djnz ReadLength

			ret c					; overflow signals the end of the data

ShortLength		GET_BIT
			;inc c					; N.B. +2 is not needed, LDIs below take care of it
			rl c					; BC = len = 3

			dec b
			GET_BIT : jr nc,ShortOffset2

LongOffset		DUP 4
			GET_BIT : rl b
			EDUP
			dec b

ShortOffset2		push hl
			ld l,(hl) : ld h,b
			add hl,de
			
			ld b,0
			ldi : ldir : ldi : ldi
			pop hl : inc hl

		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte2		ld a,(hl) : inc hl : adc a : jr c,CASE01x
CASE00x			add a : jr nc,CASE000 : jr z,ReloadByte3

CASE001:		; "001"+[OFFSET] is a close 2-byte match
			push hl
			ld l,(hl) : ld h,#FF
			add hl,de

			ldi : ldi

			pop hl : inc hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte4		ld a,(hl) : inc hl : adc a : jr c,CASE011

CASE010:		; "010" is a 3-byte match
			ld b,#FF
			GET_BIT : jr nc,ShortOffset1

			DUP 4
			GET_BIT : rl b
			EDUP
			dec b

ShortOffset1		push hl
			ld l,(hl) : ld h,b
			add hl,de

			ldi : ldi : ldi

			pop hl : inc hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte3		ld a,(hl) : inc hl : adc a : jr c,CASE001

CASE000:		; "000"+ooo is a very close 1-byte match
			ld b,#FF
			DUP 3
			GET_BIT : rl b
			EDUP

			push hl
			ld l,b : ld h,#FF
			add hl,de

			ldi

			pop hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

;
;  pretty usual getbit for mixed datastreams

ReloadByte:		ld a,(hl) : inc hl
			adc a : ret

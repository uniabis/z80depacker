;
;  Size-optimized MegaLZ decompressor by spke (ver.03 13/01/2021, 88 bytes)
;
;  The commonly used "classic" decompressor for MegaLZ is a 110 byte relocatable routine
;  "DEC40.asm" written by Fyrex^MhM in 1998
;
;  This non-relocatable decompressor is 22 bytes shorter and 20% faster than DEC40.asm
;
;  ver.00 by spke (27-28/08/2018, 95 bytes, released @ https://hype.retroscene.org/blog/933.html);
;  ver.01 by spke (31/07/2019, 92(-3) bytes, slightly faster);
;  ver.02 by spke (06/05/2020, 88(-4) bytes, -0.5% speed);
;  ver.03 by spke (13/01/2021, fixed a bug in ver.02, added full revision history)
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
;  This decompressor only modifies AF, BC, DE, HL
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
;  Uncomment the next line for the additional 20% speed-up at the cost of extra 9 bytes

;	DEFINE FasterGetBit

	IFDEF FasterGetBit
		MACRO	GET_BIT
			add a : call z,ReloadByte
		ENDM
	ELSE
		MACRO	GET_BIT
			call GetOneBit
		ENDM
	ENDIF

@DecompressMegaLZ:	ld a,128

;
;  case "0"+BYTE: copy a single literal

CASE1:			ldi					; first byte is always copied as literal

;
;  main decompressor loop

MainLoop:		GET_BIT : jr c,CASE1			; "1"+BYTE = copy literal

			push de : ld bc,1 : ld de,#FF00+%00011111

			GET_BIT : jr nc,CASE00x

CASE01x:		; "01" could be a 3-byte match or longer match
			GET_BIT : jr nc,CASE010

CASE011:		; "011" are general length matches (N.B.: BC = 1)
ReadLogLength		GET_BIT : inc b
			jr nc,ReadLogLength

ReadLength		GET_BIT : rl c : jr c,WayOut		; overflow signals the end of the data
			djnz ReadLength

CASE010:		; "010" is a 3-byte match
			inc c					; BC = len = 3 (note INC C below)

			GET_BIT : jr nc,ShortOffset

			ld d,e
LongOffset		GET_BIT : rl d
			jr nc,LongOffset
			dec d

CASE001:		; "001"+[OFFSET] is a close 2-byte match
ShortOffset		ld e,(hl) : inc hl			; DE = -offset

			inc c

ActualCopy		ex (sp),hl				; HL = dest, (SP) = src
			ex de,hl : add hl,de			; DE = dest, HL = dest-offset
			ldir
			pop hl : jr MainLoop

	IFNDEF FasterGetBit
WayOut			EQU $-1					; warning, an evil hack: the offset of JR MainLoop
								; just above is also serving as the command POP DE
GetOneBit:		add a : ret nz
	ELSE
WayOut			pop de
	ENDIF

ReloadByte:		ld a,(hl) : inc hl
			rla : ret

CASE00x:		GET_BIT : jr c,CASE001

CASE000:		; "000"+ooo is a very close 1-byte match

	IFNDEF FasterGetBit
			ccf
ReadThreeBits		call nc,GetOneBit : rl e
			jr nc,ReadThreeBits			; DE = -offset
			jr ActualCopy
	ELSE
			ld e,%00111111
ReadThreeBits		GET_BIT : rl e
			jr nc,ReadThreeBits			; DE = -offset
			jr ActualCopy
	ENDIF



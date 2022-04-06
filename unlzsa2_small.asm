;
;  Size-optimized LZSA2 decompressor by spke & uniabis (134 bytes)
;
;  ver.00 by spke for LZSA 1.0.0 (02-09/06/2019, 145 bytes);
;  ver.01 by spke for LZSA 1.0.5 (24/07/2019, added support for backward decompression);
;  ver.02 by uniabis (30/07/2019, 144(-1) bytes, +3.3% speed and support for Hitachi HD64180);
;  ver.03 by spke for LZSA 1.0.7 (01/08/2019, 140(-4) bytes, -1.4% speed and small re-organization of macros);
;  ver.04 by spke for LZSA 1.1.0 (26/09/2019, removed usage of IY, added full revision history)
;  ver.05 by spke for LZSA 1.1.1 (11/10/2019, 139(-1) bytes, +0.1% speed)
;  ver.06 by spke (11-12/04/2021, added some comments)
;  ver.07 by spke (04-05/04/2022, 134(-5) bytes, +1% speed, using self-modifying code by default)
;  ver.07p1 by uniabis (06/04/2022, -1 byte with AVOID_SELFMODIFYING_CODE)
;
;  The data must be compressed using the command line compressor by Emmanuel Marty
;  The compression is done as follows:
;
;  lzsa.exe -f2 -r <sourcefile> <outfile>
;
;  where option -r asks for the generation of raw (frame-less) data.
;
;  The decompression is done in the standard way:
;
;  ld hl,FirstByteOfCompressedData
;  ld de,FirstByteOfMemoryForDecompressedData
;  call DecompressLZSA2
;
;  Backward compression is also supported; you can compress files backward using:
;
;  lzsa.exe -f2 -r -b <sourcefile> <outfile>
;
;  and decompress the resulting files using:
;
;  ld hl,LastByteOfCompressedData
;  ld de,LastByteOfMemoryForDecompressedData
;  call DecompressLZSA2
;
;  (do not forget to uncomment the BACKWARD_DECOMPRESS option in the decompressor).
;
;  Of course, LZSA2 compression algorithms are (c) 2019 Emmanuel Marty,
;  see https://github.com/emmanuel-marty/lzsa for more information
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

;	DEFINE	BACKWARD_DECOMPRESS						; uncomment for data compressed with option -b (+5 bytes, -3% speed)
;	DEFINE	AVOID_SELFMODIFYING_CODE					; uncomment to disallow self-modifying code (-1 byte, -4% speed)

	IFNDEF	BACKWARD_DECOMPRESS

		MACRO NEXT_HL
		inc hl
		ENDM

		MACRO ADD_OFFSET
		add hl,de
		ENDM

		MACRO BLOCKCOPY
		ldir
		ENDM

	ELSE

		MACRO NEXT_HL
		dec hl
		ENDM

		MACRO ADD_OFFSET
		;push hl : or a : sbc hl,de : pop de				; 11+4+15+10 = 40t / 5 bytes
		; HL = DE - HL
		ld a,e : sub l : ld l,a
		ld a,d : sbc h : ld h,a						; 6*4 = 24t / 6 bytes
		ENDM

		MACRO BLOCKCOPY
		lddr
		ENDM

	ENDIF

@DecompressLZSA2:
		; in many places we assume that B = 0
		; flag P in A' signals the need to re-load the nibble store
		xor a : ld b,a : exa : jr .ReadToken

.CASE00x:		; token "00Z" stands for 5-bit offsets
			; (read a nibble for offset bits 1-4 and use the inverted bit Z
			; of the token as bit 0 of the offset; set bits 5-15 of the offset to 1)
			push af
			call ReadNibble.skipLDCA : ld c,a
			pop af
			cp %00100000 : rl c : jr .SaveOffset

.CASE0xx	dec b : cp %01000000 : jr c,.CASE00x

.CASE01x:		; token "01Z" stands for 9-bit offsets
			; (read a byte for offset bits 0-7 and use the inverted bit Z
			; for bit 8 of the offset; set bits 9-15 of the offset to 1)
			cp %01100000
.doRLB			rl b

.OffsetReadC:		ld c,(hl) : NEXT_HL
		
	IFNDEF	AVOID_SELFMODIFYING_CODE
.SaveOffset:		ld (.PrevOffset),bc : ld b,0
	ELSE
.SaveOffset:		push bc : pop ix : ld b,0
	ENDIF

.MatchLen:		and %00000111 : add 2 : cp 9
			call z,ExtendedCode

.CopyMatch:		ld c,a

	IFNDEF	AVOID_SELFMODIFYING_CODE
			push hl						; BC = len, DE = dest, HL = -offset, SP -> [src]
.PrevOffset		EQU $+1 : ld hl,0
	ELSE
			push ix						; BC = len, DE = dest, HL = -offset, SP -> [src]
			ex (sp), hl
	ENDIF
			ADD_OFFSET
			BLOCKCOPY					; BC = 0, DE = dest
			pop hl						; HL = src

.ReadToken:	ld a,(hl) : NEXT_HL : push af
		and %00011000 : jr z,.NoLiterals

			rrca : rrca : rrca
			call pe,ExtendedCode

			ld c,a
			BLOCKCOPY

.NoLiterals:	pop af : or a : jp p,.CASE0xx

.CASE1xx	cp %11000000 : jr c,.CASE10x
		; token "111" stands for repeat offsets
		; (reuse the offset value of the previous match command)
		cp %11100000 : jr nc,.MatchLen

.CASE110:		; token "110" stands for 16-bit offset
			; (read a byte for offset bits 8-15, then another byte for offset bits 0-7)
			ld b,(hl) : NEXT_HL : jr .OffsetReadC

.CASE10x:		; token "10Z" stands for 13-bit offsets
			; (read a nibble for offset bits 9-12 and use the inverted bit Z
			; for bit 8 of the offset, then read a byte for offset bits 0-7.
			; set bits 13-15 of the offset to 1. substract 512 from the offset to get the final value)
			call ReadNibble : ld b,a
			ld a,c : cp %10100000
			dec b : jr .doRLB


ExtendedCode:	call ReadNibble : inc a : jr z,ExtraByte
		sub #F0+1 : add c : ret
ExtraByte	ld a,15 : add c : add (hl) : NEXT_HL : ret nc
		ld a,(hl) : NEXT_HL
		ld b,(hl) : NEXT_HL : ret nz
		pop bc								; RET is not needed, because RET from ReadNibble is sufficient


ReadNibble:	ld c,a
.skipLDCA	xor a : exa : ret m
		ld a,(hl) : or #F0 : exa
		ld a,(hl) : NEXT_HL : or #0F
		rrca : rrca : rrca : rrca : ret

















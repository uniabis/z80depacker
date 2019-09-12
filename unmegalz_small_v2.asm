;
;  Size-optimized MegaLZ decompressor (v.2 31/07/2019, 92 bytes)
;
;  The only decompressor for MegaLZ that I know of is a relocatable
;  110 byte version written by Fyrex^MhM
;
;  This non-relocatible version was optimized for size by spke
;  (it is 18 bytes shorter and 20% faster than DEC40.asm by fyrex^mhm)
;
;  The decompression is done in the standard way:
;
;  ld hl,CompressedData
;  ld de,WhereToDecompress
;  call DecompressMegaLZ
;
;  The decompressor only modifies AF, BC, DE, HL
;
;  Drop me an email if you have any comments/ideas/suggestions: zxintrospec@gmail.com
;

;
;  Uncomment the next line for the additional 20% speed-up at the cost of extra 7 bytes

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
			push de : ld d,#FF
			ld bc,2
			GET_BIT : jr c,CASE01x
			GET_BIT : jr c,CASE001

CASE000:		; "000"+ooo is a close 1-byte match
			dec c					; BC = len = 1

			ld e,%00111111				; i.e. DE = #FF00+%00111111
ReadThreeBits:		GET_BIT : rl e
			jr nc,ReadThreeBits			; DE = -offset

ActualCopy		ex (sp),hl				; HL = dest, (SP) = src
			ex de,hl : add hl,de			; DE = dest, HL = dest-offset
			ldir
			pop hl : jr MainLoop

CASE01x:		; "01" could be a 3-byte match or longer match
			GET_BIT : jr nc,CASE010

CASE011:		; "011" are general length matches
			dec c					; BC = 1

ReadLogLength		GET_BIT : inc b
			jr nc,ReadLogLength

ReadLength		GET_BIT : rl c : jr c,WayOut		; overflow signals the end of the data
			djnz ReadLength

			inc c

CASE010:		; "010" is a 3-byte match
			inc c					; BC = len = 3

			GET_BIT : jr nc,ShortOffset

			ld d,%00011111
LongOffset		GET_BIT : rl d
			jr nc,LongOffset
			dec d

CASE001:		; "001"+[OFFSET] is a close 2-byte match
ShortOffset		ld e,(hl) : inc hl			; DE = -offset
			jr ActualCopy

WayOut:			pop de

;
;  pretty usual getbit for mixed datastreams

	IFNDEF FasterGetBit
GetOneBit:		add a : ret nz
	ENDIF
ReloadByte:		ld a,(hl) : inc hl
			rla : ret


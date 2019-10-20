;
;  Speed-optimized MegaLZ decompressor (v.2 31/07/2019, 233 bytes)
;                                    (v.2p1 20/10/2019, 229 bytes)
;
;  The only decompressor for MegaLZ that I know of is a relocatable
;  110 byte version written by Fyrex^MhM
;
;  This non-relocatible version was optimized for speed by spke
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

		DEFINE	AllowUsingIX

		MACRO	GET_BIT
			add a : call z,ReloadByte
		ENDM

@DecompressMegaLZ:
		IFDEF	AllowUsingIX
			ld ix,MainLoop
		ENDIF
			ldi
			scf

ReloadByte1		ld a,(hl) : inc hl : rla : jr nc,ProcessMatch1
			DUP 2
			ldi : add a : jr nc,ProcessMatch1
			EDUP
;
;  case "0"+BYTE: copy a single literal

CASE1:			ldi					; first byte is always copied as literal

;
;  main decompressor loop

MainLoop:		add a : jr z,ReloadByte1 : jr c,CASE1		; "1"+BYTE = copy literal
ProcessMatch1		add a : jr z,ReloadByte2 : jr c,CASE01x
ProcessMatch2		add a : jr z,ReloadByte3 : jr nc,CASE000

CASE001:		; "001"+[OFFSET] is a close 2-byte match
			push hl: ld l,(hl) : ld h,#FF

			add hl,de
			ldi
			ldi
			pop hl
			inc hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte2		ld a,(hl) : inc hl : rla : jr nc,ProcessMatch2

CASE01x:		; "01" could be a 3-byte match or longer match
			add a : jr z,ReloadByte4 : jr c,CASE011

CASE010:		; "010" is a 3-byte match
			ld b,#FF
			GET_BIT : jr nc,ShortOffset1

			DUP 4
			GET_BIT : rl b
			EDUP
			dec b

ShortOffset1		push hl : ld l,(hl) : ld h,b			; HL = -offset

			add hl,de
			ldi
			ldi
			ldi
			pop hl
			inc hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte3		ld a,(hl) : inc hl : rla : jr c,CASE001

CASE000:		; "000"+ooo is a very close 1-byte match
			ld bc,#FFFF
			DUP 3
			GET_BIT : rl c
			EDUP

			push hl : ld h,d : ld l,e
			add hl,bc
			ldi
			pop hl			; 10 + 11+4+4+11+16+10 = 66t

		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

ReloadByte4		ld a,(hl) : inc hl : rla : jr nc,CASE010

CASE011:		; "011" are general length matches
			ld bc,1					; BC = 1
			GET_BIT : jr c,ShortLength		; significant speed-up

ReadLogLength		GET_BIT : inc b
			jr nc,ReadLogLength

ReadLength		GET_BIT : rl c
			djnz ReadLength

			ret c					; overflow signals the end of the data

ShortLength		GET_BIT
			inc c : rl c				; BC = len = 3

			push de
			ld d,#FF
			GET_BIT : jr nc,ShortOffset2

			DUP 4
			GET_BIT : rl d
			EDUP
			dec d

ShortOffset2		ld e,(hl) : inc hl			; DE = -offset

			ex (sp),hl				; HL = dest, (SP) = src
			ex de,hl : add hl,de			; DE = dest, HL = dest-offset
			ldir
			pop hl
		IFDEF	AllowUsingIX
			jp (ix)
		ELSE
			jp MainLoop
		ENDIF

;
;  pretty usual getbit for mixed datastreams

ReloadByte:		ld a,(hl) : inc hl
			rla : ret


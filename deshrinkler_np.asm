; Shrinkler z80 decompressor Madram/OVL version v8
;
; Modified by Ivan Gorodetsky (2019-10-06)
; 1. Support of R800 with hardware multiplication added
; 2. Self-modifying code removed
; 3. Initialisation of d2 for reuse of decompressor added
; 4. Minor optimisations
; 5. No parity context
;
; 206 bytes - z80 version
; 193 bytes - R800 version
; Compile with The Telemark Assembler (TASM) 3.2
;
; input IX=source
; input DE=destination		- it has to be even!
; call shrinkler_decrunch

; you may change probs to point to any 256-byte aligned free buffer (size 2.0 Kilobytes)
probs = 01000h
probs_ref = probs+400h
probs_length = probs_ref
probs_offset = probs_length+200h

;#DEFINE R800


shrinkler_decrunch
		exx
		ld hl,8*256+probs
		ld bc,8*256+80h
		xor a
init
		dec h
iniloop
		ld (hl),a
		inc l
		jr nz,iniloop
		xor c
		djnz init
		ld d,b
		ld e,b
		push de
		pop iy			; d2=0
		inc e
		ld a,c
		ex af,af'

literal
		scf
getlit
		call nc,getbit
		rl l
		jr nc,getlit
		ld a,l
		exx
		ld (de),a
		inc de
		call getkind
		jr nc,literal
		ld h,probs_ref/256
		call getbit
		jr nc,readoffset
readlength
		ld h,probs_length/256
		call getnumber
		push hl
		add hl,de
		ldir
		pop hl
		call getkind
		jr nc,literal
readoffset
		ld h,probs_offset/256
		call getnumber
		ld hl,2
		sbc hl,bc
		exx
		jr nz,readlength
		ret

getnumber
_numberloop
		inc l
		inc l
		call getbit
		jr c,_numberloop
		exx
		ld bc,1
		exx
_bitsloop
		dec l
		call getbit
		exx
		rl c
		rl b
		exx
		dec l
		jr nz,_bitsloop
		exx
		ret
		
readbit
		ex de,hl
		add hl,hl
		ex de,hl
		ex af,af'
		add a,a
		jr nz,_rbok
		ld a,(ix)
		inc ix
		adc a,a
_rbok
		ex af,af'
		add iy,iy
		ex af,af'
		jr nc,$+4
		.db 0FDh,2Ch	; inc yl
		ex af,af'
		jr getbit

getkind
		exx
		ld hl,probs
getbit
		ld a,d
		add a,a
		jr nc,readbit
		ld b,(hl)
		inc h
		ld c,(hl)
		push hl
		ld l,c
		ld h,b
		push bc
		ld a,11100001b
shift4
		srl b
		rr c
		add a,a
		jr c,shift4
		sbc hl,bc
		pop bc
		push hl

	IFDEF R800
		push de
		ex de,hl
		.db 0EDh,0C3h	; muluw hl,bc
		.db 0FDh,7Dh	; ld a,yl
		sub e
		ld l,a
		.db 0FDh,7Ch	; ld a,yh
		sbc a,d
		jr nc,zero
one
		pop bc
	ELSE
		sbc hl,hl
muluw
		add hl,hl
		rl c
		rl b
		jr nc,_mulcont
		add hl,de
		jr nc,_mulcont
		inc bc
_mulcont
		dec a
		jr nz,muluw
		.db 0FDh,7Dh	; ld a,yl
		sub c
		ld l,a
		.db 0FDh,7Ch	; ld a,yh
		sbc a,b		
		jr nc,zero
one
		ld e,c
		ld d,b
	ENDIF
		pop bc
		ld a,b
		sub 0F0h
		ld b,a
		dec bc
		jr _probret

zero
		.db 0FDh,67h	; ld yh,a
		ld a,l
		.db 0FDh,6Fh	; ld yl,a

	IFDEF R800
		pop hl
		sbc hl,de
	ELSE
		ex de,hl
		sbc hl,bc
	ENDIF
		
		ex de,hl
		pop bc
_probret
		pop hl
		ld (hl),c
		dec h
		ld (hl),b
		ret


		;.end

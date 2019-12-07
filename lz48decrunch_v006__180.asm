;
; LZ48 decrunch
;

; In	; HL=compressed data address
; 	; DE=output data address
; Out	; HL    last address of compressed data read (you must inc once for LZ48 stream)
;	; DE    last address of decrunched data write +1
;	; BC    always 1
;	; A     always zero
;	; flags (Z,NC,P,PE)
;	; HL'   address of lzunpack(if OPTIMIZE_JUMP=2)
;	; E'    undetermined
;	; BC'   always 0f10h
; Modif	; AF, BC, DE, HL, BC', E', HL'

    ;DEFINE OPTIMIZE_JUMP 2

LZ48_decrunch
	ldi
	ld b,0

	exx
	ld bc,0f10h
    IF OPTIMIZE_JUMP=2
	ld hl,lzunpack
    ENDIF
	exx
	jr nextsequence

loop:
	ld e,a
	rrca
	rrca
	rrca
	rrca

	and b
	cp b ; more bytes for literal length?
	exx

	call nc,getadditionallength

copyliteral
	ld c,a
	ldir

	exx
	ld a,e
	and b
lzunpack
	cp b ; more bytes for match length?
	inc a
	exx

	call nc,getadditionallength

readoffset
	ld c,a
; read encoded offset
	sbc a,(hl)
	sub c
	ret z ; LZ48 end with zero offset
	inc hl
	push hl
; source=dest-copyoffset
	; A != 0 here
	ld l,a
	ld h,0ffh
	add hl,de
	ldir
	inc b
	ldi
	ldi

	pop hl

nextsequence
	ld a,(hl)
	inc hl

	exx
	cp c
	jr nc,loop
    IF OPTIMIZE_JUMP=2
	jp (hl)
    ELSE
      IF OPTIMIZE_JUMP=1
	jp lzunpack ; no literal bytes
      ELSE
	jr lzunpack ; no literal bytes
      ENDIF
    ENDIF

lengthNC
	scf
lengthC
	inc c
	ret nz

getadditionallength
	ld c,(hl) ; get additional literal length byte
	inc hl
	add a,c ; compute literal length total
	jr nc,lengthNC
	inc b
	jr lengthC


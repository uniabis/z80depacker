;
; LZ48 decrunch
;

; In	; HL=compressed data address
; 	; DE=output data address
; Out	; HL    last address of compressed data read (you must inc once for LZ48 stream)
;	; DE    last address of decrunched data write +1
;	; BC    always 3
;	; A     always zero
;	; flags (inc a -> 0)
;	; L'    undetermined
;	; DE'   always 0312h
;	; BC'   always 0f10h
;	; AF'   undetermined
; Modif	; AF, BC, DE, HL, AF', BC', DE', L'

LZ48_decrunch
	ldi
	ld b,0

	exx
	ld bc,0f10h
	ld de,0312h
	exx

nextsequence
	ld a,(hl)
	inc hl

	exx
	cp c
	jr c,lzunpack ; no literal bytes
	ld l,a
	rrca
	rrca
	rrca
	rrca

	and b
	cp b ; more bytes for literal length?
	exx

	jr nz,copyliteral
getadditionallength
	ld c,(hl) ; get additional literal length byte
	inc hl
	add a,c ; compute literal length total
	jr nc,lengthNC
	inc b
lengthNC
	inc c
	jr z,getadditionallength ; if last literal length byte was 255, we have more bytes to process
copyliteral
	ld c,a
	ldir

	exx
	ld a,l
	and b
lzunpack
	add d
	cp e ; more bytes for match length?
	exx

	jr nz,readoffset
getadditionallengthbis
	ld c,(hl) ; get additional match length byte
	inc hl
	add a,c ; compute match length size total
	jr nc,lengthNCbis
	inc b
lengthNCbis
	inc c
	jr z,getadditionallengthbis ; if last match length byte was 255, we have more bytes to process

readoffset
	ld c,a
; read encoded offset
	ld a,(hl)
	xor #FF
	ret z ; LZ48 end with zero offset
	inc hl
	push hl
; source=dest-copyoffset
	; A != 0 here
	ld l,a
	ld h,#FF
	add hl,de
copykey
	ldir

	pop hl
	jr nextsequence

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
;	; L'    undetermined
;	; BC'   always 0f10h
; Modif	; AF, BC, DE, HL, BC', L'

LZ48_decrunch
	ldi
	ld b,0

	exx
	ld bc,0f10h
	exx
	jr nextsequence

loop:
	ld l,a
	rrca
	rrca
	rrca
	rrca

	and b
	cp b ; more bytes for literal length?
	exx

	call z,getadditionallength

copyliteral
	ld c,a
	ldir

	exx
	ld a,l
	and b
lzunpack
	inc a
	cp c ; more bytes for match length?
	exx

	call z,getadditionallength

readoffset
	ld c,a
; read encoded offset
	ld a,(hl)
	xor 0ffh
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
	jr lzunpack ; no literal bytes

getadditionallength
	ld c,(hl) ; get additional literal length byte
	inc hl
	add a,c ; compute literal length total
	jr nc,lengthNC
	inc b
lengthNC
	inc c
	ret nz
	jr getadditionallength ; if last literal length byte was 255, we have more bytes to process


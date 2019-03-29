;
; LZ48 decrunch
;
; hl  compressed data adress
; de  output adress of data
;


;	org #8000

;; CALL #8000,source,destination
;	di

;; parameters
;	ld h,(ix+3)
;	ld l,(ix+2)
;	ld d,(ix+1)
;	ld e,(ix+0)

;	call LZ48_decrunch

;	ei
;	ret





LZ48_decrunch
	ldi
	ld b,0

nextsequence
	ld a,(hl)
	inc hl
	ld ixl,a
	and #F0
	jr z,lzunpack ; no litteral bytes
	rrca
	rrca
	rrca
	rrca

	ld c,a
	cp 15 ; more bytes for length?
	jr nz,copyliteral

getadditionallength
	ld a,(hl)
	inc hl
	inc a
	jr nz,lengthnext
	inc b
	dec bc
	jr getadditionallength
lengthnext
	dec a
	add a,c
	ld c,a
	ld a,b
	adc a,0
	ld b,a ; bc=length

copyliteral
	ldir

lzunpack
	ld a,ixl
	and #F
	add 3
	ld c,a
	cp 18 ; more bytes for length?
	jr nz,readoffset

getadditionallengthbis
	ld a,(hl)
	inc hl
	inc a
	jr nz,lengthnextbis
	inc b
	dec bc
	jr getadditionallengthbis
lengthnextbis
	dec a
	add a,c
	ld c,a
	ld a,b
	adc a,0
	ld b,a ; bc=length

readoffset
	; read encoded offset
	ld a,(hl)
	inc a
	ret z ; LZ48 end with zero offset
	inc hl
	push hl
	ld l,a
	ld a,e
	sub l
	ld l,a
	ld a,d
	sbc a,0
	ld h,a
	; source=dest-copyoffset

copykey
	ldir

	pop hl
	jr nextsequence



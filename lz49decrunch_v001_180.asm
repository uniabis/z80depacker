;
; LZ49 decrunch
; input
; hl  compressed data adress
; de  output adress of data
;
; output
; hl    last adress of compressed data read (you must inc once for LZ49 stream)
; de    last adress of decrunched data write +1
; bc    always 3
; a     always zero
; bc'   always 0770h
; de'   always 0f03h
; h'    always 18
; l'    undetermined
; flags (inc a -> 0)

;org #8000

;; CALL #8000,source,destination
;	di
;
;; parameters
;	ld h,(ix+3)
;	ld l,(ix+2)
;	ld d,(ix+1)
;	ld e,(ix+0)
;
;	call LZ49_decrunch
;
;	ei
;	ret


LZ49_decrunch
	ldi
	ld b,0
	exx
	ld bc,0770h
	ld de,0f03h
	ld h,18
	exx
	jr nextsequence

lengthnext
	dec a
	add a,c
	ld c,a
	adc a,b
	sub c
	ld b,a ; bc=length

copyliteral
	ldir

	exx
lzunpack
	ld a,l
	and d
	add e
	cp h ; more bytes for length?

	exx
	ld c,a

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
	adc a,b
	sub c
	ld b,a ; bc=length

readoffset
	exx
	ld a,l
	exx
	add a

	ld a,(hl)
	inc hl
	inc a
	jr c,extendedoffset
	; read encoded offset
	ret z ; LZ49 end with zero offset

	push hl
	ld l,a
	ld a,e
	sub l
	ld l,a
	sbc a,l
	add d
	ld h,a
	; source=dest-copyoffset
	ldir
	pop hl

nextsequence
	ld a,(hl)
	inc hl

	exx

	ld l,a
	and c
	jr z,lzunpack ; no litteral bytes
	rrca
	rrca
	rrca
	rrca

	cp b ; more bytes for length?

	exx

	ld c,a
	jr nz,copyliteral

getadditionallength
	ld a,(hl)
	inc hl
	inc a
	jr nz,lengthnext
	inc b
	dec bc
	jr getadditionallength

extendedoffset

	push hl
	ld l,a
	ld a,e
	sub l
	ld l,a
	ld a,d
	sbc a,1
	ld h,a
	; source=dest-copyoffset
	ldir
	pop hl
	jr nextsequence





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
; Modif	; AF, BC, DE, HL

LZ48_decrunch
	ldi
	ld b,0

	jr nextsequence

loop:
	push af

	rrca
	rrca
	rrca
	rrca

	and 0fh
	cp 0fh ; more bytes for literal length?

	call nc,getadditionallength

copyliteral
	ld c,a
	ldir

	pop af
	and 0fh
lzunpack
	cp 0fh ; more bytes for match length?
	inc a

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
	inc bc
	inc bc
	ldir

	pop hl

nextsequence
	ld a,(hl)
	inc hl

	cp 10h
	jr nc, loop
	jr lzunpack

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


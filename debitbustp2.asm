;In: HL: source
;    DE: destination

	scf

fill_bit_buffer1:
	ld	a,(hl)
	inc	hl
	adc	a,a
	jr	c,get_offset

	;DUP	6
	;ldi
	;add	a,a
	;jr	c,get_offset
	;EDUP

one_literal:
	ldi

main_loop:
	add	a
	jr	nc,one_literal
	jr	z,fill_bit_buffer1

get_offset:
	ld	c,(hl)
	inc	hl
	bit	7,c
	jr	nz,long_offset
	ld	b,0

apply_offset:
	push	de	; (----sp) = dest
	ex	de,hl
	sbc	hl,bc
	ex	de,hl
	push	de	; (----sp) = dest-offset

	ld	bc,1
	ld	d,b

get_bit_length_loop:
	inc	b
	add	a
	jr	nc,get_bit_length_end
	jr	nz,get_bit_length_loop
	ld	a,(hl)
	inc	hl
	adc	a
	jr	c,get_bit_length_loop
	dec	b
	jr	z,get_length_end

get_length_loop:
	add	a
	call	z,fill_bit_buffer2
	rl	c
	rl	d

get_bit_length_end:
	djnz	get_length_loop
get_length_end:
	ld	b,d		; bc = length - 1
	pop	de		; de = (sp++++) = dest-offset

	jr	c,exit

	ex	(sp),hl		; (sp) = source, hl = dest

	ex	de,hl		; hl = dest-offset, de = dest

	ldir
	ldi

	pop	hl		; hl = (sp++++) = source

	jp	main_loop


exit:
	pop	de
	ret


long_offset:
	ld	b,0c0h

long_offset_loop:
	add	a
	call	z,fill_bit_buffer2
	rl	b
	jr	c,long_offset_loop
	add	a
	call	z,fill_bit_buffer2
	jr	c,apply_offset
	res	7,c
	scf
	jr	apply_offset


fill_bit_buffer2:
	ld	a,(hl)
	inc	hl
	adc	a,a
	ret

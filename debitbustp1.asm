;In: HL: source
;    DE: destination

	scf

fill_bit_buffer:
	ld	a,(hl)
	inc	hl
	adc	a,a
	jr	c,get_offset

one_literal:
	ldi

main_loop:
	add	a
	jr	nc,one_literal
	jr	z,fill_bit_buffer

get_offset
	push	de	; (----sp) = dest

	ld	c,(hl)
	inc	hl
	bit	7,c
	jr	nz,long_offset
	ld	b,0

apply_offset:
	ex	de,hl
	scf
	sbc	hl,bc
	ex	de,hl
	push	de	; (----sp) = dest-offset

	ld	bc,1
	ld	d,b

get_bit_length_loop:
	inc	b
	call	get_bit
	jr	c,get_bit_length_loop
	jr	get_bit_length_end


get_length_loop:
	call	get_bit
	rl	c
	rl	d

get_bit_length_end:
	djnz	get_length_loop

	ld	b,d		; bc = length - 1
	pop	de		; de = (sp++++) = dest-offset

	jr	c,exit

	ex	(sp),hl		; (sp) = source, hl = dest

	ex	de,hl		; hl = dest-offset, de = dest

	ldir
	ldi

	pop	hl		; hl = (sp++++) = source

	jr	main_loop


exit:
	pop	de
	ret


long_offset:
	ld	b,0c0h

long_offset_loop:
	call	get_bit
	rl	b
	jr	c,long_offset_loop
	call	get_bit
	jr	c,apply_offset
	res	7,c
	jr	apply_offset


get_bit:
	add	a
	ret	nz
	ld	a,(hl)
	inc	hl
	adc	a,a
	ret

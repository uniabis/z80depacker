;In: HL: source
;    DE: destination

	ld	a,128
	jr	main_loop

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

	db	0DAh		; 0DAh: z80 opcode JP C,nnnn

one_literal:
	ldi

main_loop:
	call	get_bit
	jr	nc,one_literal

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
	call	get_bit
	jr	c,get_bit_length_loop
	jr	get_bit_length_end

exit:
	pop	de
	;ret

get_bit:
	add	a
	ret	nz
	ld	a,(hl)
	inc	hl
	adc	a,a
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
	scf
	jr	apply_offset

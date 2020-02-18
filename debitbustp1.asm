	;In: HL: source
	;    DE: destination

depack: ;inc	hl		;skip original file length
;	inc	hl		;which is stored in 4 bytes
;	inc	hl
;	inc	hl

	ld	a,128

	exx
	ld	de,1
	exx

	jr	depack_loop

get_gamma_value_bits:
	exx
	call getbits
	exx

	adc	hl,hl				;insert new bit in HL
get_gamma_value_size_end:
	djnz	get_gamma_value_bits		;repeat if more bits to go

get_gamma_value_end:
	inc	hl		;length was stored as length-2 so correct this
	exx			;back to normal register set

	ret	c
;HL' = length

	push	hl		;address compressed data on stack

	exx
	push	hl		;match length on stack
	exx

	ld	h,d
	ld	l,e		;destination address in HL...
	sbc	hl,bc		;calculate source address

	pop	bc		;match length from stack

	ldir			;transfer data

	pop	hl		;address compressed data back from stack

	db	0CAh		;skip next 2 bytes(JP C,nnnn)
	;jr	depack_loop

copy_literal:
	ldi			;copy byte from compressed data to destination (literal byte)
depack_loop:
	call getbits
	jr	nc,copy_literal	;if set, we got lz77 compression

;handle compressed data
output_compressed:
	ld	c,(hl)		;get lowest 7 bits of offset, plus offset extension bit
	inc	hl		;to next byte in compressed data

output_match:
	ld	b,0
	bit	7,c
	jr	z,output_match1	;no need to get extra bits if carry not set

	call getbits
	call rlbgetbits
	call rlbgetbits
	call rlbgetbits

	jr	c,output_match1	;since extension mark already makes bit 7 set 
	res	7,c		;only clear it if the bit should be cleared
output_match1:
	inc	bc


;return a gamma-encoded value
;length returned in HL
	exx			;to second register set!
	ld	h,d
	ld	l,e		;initial length to 1
	ld	b,e		;bitcount to 1

;determine number of bits used to encode value
get_gamma_value_size:
	exx
	call getbits
	exx
	jr	nc,get_gamma_value_size_end	;if bit not set, bitlength of remaining is known
	inc	b				;increase bitcount
	jr	get_gamma_value_size		;repeat...


rlbgetbits
	rl	b
getbits
	add	a,a
	ret	nz
	ld	a,(hl)
	inc	hl
	rla
	ret

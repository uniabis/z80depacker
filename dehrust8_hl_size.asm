; hrust 8bits-buffer depacker for Z80 sjasm (230bytes)
;
; license:zlib license
;
; Copyright (c) 2022 uniabis
;
; This software is provided 'as-is', without any express or implied
; warranty. In no event will the authors be held liable for any damages
; arising from the use of this software.
;
; Permission is granted to anyone to use this software for any purpose,
; including commercial applications, and to alter it and redistribute it
; freely, subject to the following restrictions:
;
;   1. The origin of this software must not be misrepresented; you must not
;   claim that you wrote the original software. If you use this software
;   in a product, an acknowledgment in the product documentation would be
;   appreciated but is not required.
;
;   2. Altered source versions must be plainly marked as such, and must not be
;   misrepresented as being the original software.
;
;   3. This notice may not be removed or altered from any source
;   distribution.
;

dehrust8:
; [in]
;  hl : source address
;  de : destination address
; [work]
;  bc,af,af'

	ld	a, #80
	ex	af,af';'
	ld	a, #80
	jr	.insert_one



.offset_extend:
	pop	af
	ex	af,af';'
	rrca
	ex	af,af';'
	pop	de
	jr	.main_loop



.code00:
	inc	c
	ld	e, #3F

	;jr	.get_offset_bit_loop
	db	#CA ; Z80 opcode jp z,nnnn

.code0111:
.get_offset10:
	ld	e, #0F


.get_offset_bit_loop:
	call	.get_bits_proc

.copy_block:

	ex	(sp), hl
	ex	de, hl
	add	hl, de

	ldir

.main_loop_pophl:
	pop	hl

	;jr	.main_loop
	db	#01 ; Z80 opcode ld bc,nnnn

.insert_one:
	ldi

.main_loop:
	call	.get_bit_proc
	jr	nc, .insert_one

.get_length:
	push	de
	ld	d, #FF
	ld	bc, #0501

.get_length_loop:
	call	.get_bit_proc

	jr	c, .get_length_add2
	ld	b, #01

	;jr	.get_length_bitl
	db	#DA ; Z80 opcode jp c,nnnn

.get_length_add2:
	inc	c
	inc	c

.get_length_bitl:
	call	.get_bit_proc

	jr	nc, .get_length_end
	inc	c
	djnz	.get_length_loop

.get_length_end:

	dec	c
	ld	b, c
	jr	z, .code00
	djnz	.chcek10
.code01:
	inc	c

	call	.get_bit_proc

	jr	c, .code011
.code010:

	call	.get_bit_proc
	rl	d
.get_offset00:
	dec	d
.copy_block_reade:
	ld	e, (hl)
	inc	hl

	jr	.copy_block



.code011:
	call	.get_bit_proc

	jr	c, .code0111

.code0110:
	ld	e, c

.checkE0:
	push	af
	ld	a, (hl)
	inc	hl
	cp	#E0
	jr	nc, .rirE0
	ld	e, a
	pop	af

	jr	.copy_block



.get_offset1x:
	call	.get_bit_proc
	jr	nc, .get_offset10

.get_offset11:
	ex	af,af';'
	ld	e, a
	ex	af,af';'
	dec	e
	;jr	z, .exit1
	call	.get_bits_proc

	ld	d, e
	jr	.copy_block_reade



.rirE0:
	scf
	adc	a, a
	xor	e
	inc	a
	jr	z, .offset_extend
	sub	#10
	ld	e, a
	pop	af

.copy_rir:

	ex	(sp), hl
	ex	de, hl
	add	hl, de

	ldi

	ex	(sp), hl
	ldi
	ex	(sp), hl
	inc	hl
	ldi

	jr	.main_loop_pophl
	;pop	hl
	;jr	.main_loop



.code110001:
	ld	e, #10
	call	.get_bits_proc

	ld	d, a
	ld	a, e
	add	#06
	add	a, a
	ld	c, a
	ld	a, d

	pop	de
	ldir
	jr	.main_loop



.check1100:
	djnz	.set_length_c
.code1100:

	call	.get_bit_proc

	jr	nc, .code11000

.code11001:
	ld	e, #1F

	call	.get_bits_proc
	jr	.copy_rir



.exit1:
	pop	de
	ret



.chcek10:
	djnz	.check1100
.code10:
	inc	c

.set_length_c:
	ld	b, #00
.set_length_bc:

	call	.get_bit_proc
	jr	c, .get_offset1x

.get_offset0x:
	call	.get_bit_proc
	jr	nc, .get_offset00

.get_offset01:
	ld	e, #03

	jr	.checkE0



.code11000:
	call	.get_bit_proc
	jr	c, .code110001

.code110000:
	ld	e, #02
	call	.get_bits_proc

	ld	c, e
	ld	e, a
	ld	a, #0F
	cp	c
	jr	z, .exit1

	jr	c, .short_length
.long_length:
	ld	b, c
	ld	c, (hl)
	inc	hl
.short_length:
	ld	a, e
	jr	.set_length_bc



.get_bits_proc:
	call	.get_bit_proc
	rl	e
	jr	nc, .get_bits_proc
	ret

.get_bit_proc:
	add	a, a
	ret	nz

.fill_bitbuffer_proc:
	ld	a, (hl)
	inc	hl
	adc	a, a
	ret




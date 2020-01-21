; Exomizer 3 depacker for Z80 sjasmplus
;
; license:zlib license
;
; Copyright (c) 2019-2020 uniabis
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

; inlining for depacking speed but size of depacker
	DEFINE	INLINE_GETBIT	0
	DEFINE	INLINE_GETBITS8	1
	DEFINE	INLINE_FILBIT	0

	DEFINE	PFLAG_BITS_ORDER_BE (1<<0)
	DEFINE	PFLAG_BITS_COPY_GT_7 (1<<1)
	DEFINE	PFLAG_IMPL_1LITERAL (1<<2)
	DEFINE	PFLAG_BITS_ALIGN_START (1<<3)
	DEFINE	PFLAG_4_OFFSET_TABLES (1<<4)

	IFNDEF PFLAG_CODE
; -P0 (Exomizer2 raw compatible)
;	DEFINE PFLAG_CODE 0
; -P7 (Exomizer3 raw default)
	DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL)
; -P15
;	DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START)
; -P31
;	DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START | PFLAG_4_OFFSET_TABLES)
	ENDIF


opcode_add_hl	EQU	41	; 41=029h;ADD HL,HL


	IF (PFLAG_CODE & PFLAG_4_OFFSET_TABLES)
tbl_bytes	EQU	(16 + 16 + 16 + 16 + 4)
	ELSE
tbl_bytes	EQU	(16 + 16 + 16 + 4)
	ENDIF

tbl_shift	EQU	(opcode_add_hl - tbl_bytes - tbl_bytes)
tbl_ofs_bits	EQU	(tbl_shift)
tbl_ofs_lo	EQU	(tbl_shift + tbl_bytes)
tbl_ofs_hi	EQU	(tbl_shift + tbl_bytes + tbl_bytes)
tbl_size_all	EQU	(tbl_bytes + tbl_bytes + tbl_bytes)

	IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
first_byte	EQU	(080h)
	ELSE
first_byte	EQU	(001h)
	ENDIF


	IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
	MACRO	m_getbit1
	add	a
	ENDM

	MACRO	m_filbit1
	ld	a,(hl)
	inc	hl
	rla
	ENDM
	ELSE
	MACRO	m_getbit1
	srl	a
	ENDM

	MACRO	m_filbit1
	ld	a,(hl)
	inc	hl
	rra
	ENDM
	ENDIF

	MACRO	m_getbit
;m_getbit macro
;[out]
; CF :bit data
;[affect]
;af,hl :bit buffer & pointer
	IF (INLINE_GETBIT == 1)
	m_getbit1
	jr	nz,.bufremain
	m_filbit1
.bufremain:
	ELSE

	m_getbit1
	call	z,p_fillbitbuf
	ENDIF
	ENDM

	MACRO	m_getbits8i

	ex	af,af'	;'
.lp1:
	m_getbit
	rl	c
	djnz	.lp1

	ex	af,af'	;'
	ENDM

	MACRO	m_getbits8
;m_getbits8 macro
;[in]
; b :required bits length(0 < b <= 8)
; c :must be 0
;[out]
; b :always 0
; c :bits data
;[affect]
;af',hl :bit buffer & pointer
	IF (INLINE_GETBITS8 == 1)
	m_getbits8i
	ELSE
	call	p_getbits8
	ENDIF
	ENDM

deexo3:

	ld	iy,exo_mapbasebits - tbl_shift

	cp	a	;set ZF
	ex	af, af';'

	ld	bc, tbl_bytes * 256 + 16


	IF (PFLAG_CODE & PFLAG_BITS_ALIGN_START)
	scf
	ELSE
	;scf		 ;set CF
	or	a	;reset CF(workaround for first data byte corruption?)
	ENDIF

gb4:
	ld	a, (hl)
	inc	hl

init:
get4:
	IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
	adc	a, a
	ELSE
	rr	a
	ENDIF
	jr	z, gb4
	rl	c
	jr	nc, get4

	ex	af, af';'
	ld	a, c

	exx

	ld	hl, 1
	jr	nz,.skp1
	ld	d, h
	ld	e, l
	ld	c, 16
.skp1:

	ld	(iy+tbl_ofs_bits),a

	IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)

	rra
	jr	nc,.skp2
	or	8
.skp2:
	ENDIF
	inc	a

	ld	b,a
	ld	(iy+tbl_ofs_lo),e
	ld	(iy+tbl_ofs_hi),d
setbit:
	djnz	setbit-1

	add	hl, de
	ex	de, hl

	inc	iy
	dec	c
	ex	af, af';'
	exx

	ld	c,16
	or	a	;reset CF
	djnz	init

	IF (PFLAG_CODE & PFLAG_IMPL_1LITERAL)
	IF (INLINE_FILBIT == 1)
	jr	literal_one
	ENDIF
	ELSE
	jr	next
	ENDIF

	IF (INLINE_FILBIT == 1)
filbit:
	m_filbit1
	jr	nc,start_copy
	ENDIF

literal_one:
	ldi

next:
	IF (INLINE_FILBIT == 1)

	m_getbit1
	jr	z,filbit
	jr	c,literal_one
start_copy:

	ELSE

	m_getbit
	jr	c,literal_one

	ENDIF


	ld	bc,00ffh

.alpha:
	inc	c
	m_getbit
	jr	nc,.alpha

	ex	af,af'	;'

	ld	a,c
	sub	16
	ret	z

	dec	a
	jr	z,literal

	call	p_readtable

	push	bc

	inc	b
	dec	b
	jr	nz,defaultofs
	dec	c
	jr	z,ofs1
	dec	c
	jr	z,ofs2
	IF (PFLAG_CODE & PFLAG_4_OFFSET_TABLES)
	dec	c
	jr	z,ofs3

defaultofs:
	ld	c,01h
	jr	ofsb4

ofs1:
	ld	bc,0210h
	jr	getofs

ofs2:
	ld	c,03h
	jr	ofsb4

ofs3:
	ELSE

defaultofs:
	ld	c,01h
	jr	ofsb4

ofs1:
	ld	bc,020Ch
	jr	getofs

ofs2:
	ENDIF

	ld	c,02h
ofsb4:
	ld	b,04h
getofs:

	m_getbits8

	call	p_readtable

	ex	(sp),hl
	push	hl

	ld	h,d
	ld	l,e
	;or	a	;clear CF
	sbc	hl,bc

	pop	bc

	ldir

	pop	hl

	ex	af,af'	;'
	jp	next

p_readtable:
;p_readtable procedure
;[in]
; b :must be 0
; c :tableindex (0 <= c < tbl_bytes)
;[out]
; bc :bits data
;[affect]
;af',hl :bit buffer & pointer
;[work]
;af,iy
	ld	iy,exo_mapbasebits - tbl_shift
	add	iy,bc

	ld	a,(iy+tbl_ofs_bits)

	IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)

	ld	c,b
	rr	a
	ld	b,a

	jr	z,.skp3

	m_getbits8

.skp3:
	jr	nc,.skp4

	ld	b,c
	ld	c,(hl)
	inc	hl

.skp4:

	ELSE

	call	p_getbits16

	ENDIF

	ld	a,(iy+tbl_ofs_lo)
	add	c
	ld	c,a
	ld	a,(iy+tbl_ofs_hi)
	adc	b
	ld	b,a

	ret

literal:

	IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)
	ld	b,(hl)
	inc	hl

	ld	c,(hl)
	inc	hl
	ELSE
	ld	a,16
	call	p_getbits16
	ENDIF

	ldir

	ex	af,af'	;'
	jp	next


	IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)
	ELSE
p_getbits16:
	ld	bc,0
	or	a
	ret	z

	ld	b,a
	ld	a,d
	ld	d,c

	ex	af,af'	;'
.lp3:

	m_getbit
	rl	c
	rl	d

	djnz	.lp3

	ex	af,af'	;'

	ld	b,d
	ld	d,a

	ret

	ENDIF

	IF (INLINE_GETBIT == 1)

	ELSE

p_fillbitbuf:

	m_filbit1

	ret

	ENDIF

	IF (INLINE_GETBITS8 == 1)

	ELSE

p_getbits8:
	m_getbits8i

	ret

	ENDIF

exo_mapbasebits:
	;DEFS    tbl_size_all


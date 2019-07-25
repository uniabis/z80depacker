; Exomizer depacker for Z80 sjasm
;  by uniabis

; inlining for depacking speed but size of depacker
DEFINE	INLINE_GETBIT	0
DEFINE	INLINE_GETBITS8	1

DEFINE	PFLAG_BITS_ORDER_BE (1<<0)
DEFINE	PFLAG_BITS_COPY_GT_7 (1<<1)
DEFINE	PFLAG_IMPL_1LITERAL (1<<2)
DEFINE	PFLAG_BITS_ALIGN_START (1<<3)
DEFINE	PFLAG_4_OFFSET_TABLES (1<<4)

; -P0 (Exomizer2 raw compatible)
;DEFINE	PFLAG	0
; -P7 (Exomizer3 raw default)
DEFINE	PFLAG	(PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL)
; -P15
;DEFINE	PFLAG	(PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START)
; -P31
;DEFINE	PFLAG	(PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START | PFLAG_4_OFFSET_TABLES



IF (PFLAG & PFLAG_4_OFFSET_TABLES)
tbl_bytes	EQU	(16 + 16 + 16 + 16 + 4)
ELSE
tbl_bytes	EQU	(16 + 16 + 16 + 4)
ENDIF

tbl_shift	EQU	(-64)
tbl_ofs_bits	EQU	(tbl_shift)
tbl_ofs_lo	EQU	(tbl_shift + tbl_bytes)
tbl_ofs_hi	EQU	(tbl_shift + tbl_bytes + tbl_bytes)
tbl_size_all	EQU	(tbl_bytes + tbl_bytes + tbl_bytes)



IF (PFLAG & PFLAG_BITS_ORDER_BE)
	MACRO	m_getbit1
	sla	a
	ENDM
	MACRO	m_filbit1
	scf
	rla
	ENDM
ELSE
	MACRO	m_getbit1
	srl	a
	ENDM
	MACRO	m_filbit1
	scf
	rra
	ENDM
ENDIF

IF (INLINE_GETBIT == 1)
	MACRO	m_getbit

	m_getbit1

	jr	nz,.bufremain

	ld	a,(hl)
	inc	hl

	m_filbit1
.bufremain:

	ENDM
ELSE
	MACRO	m_getbit

	m_getbit1

	call	z,p_fillbitbuf

	ENDM
ENDIF

IF (INLINE_GETBITS8 == 1)

	MACRO	m_getbits8

	ex	af,af'	;'
.lp1:
	m_getbit
	rl	c
	djnz	.lp1

	ex	af,af'	;'
	ENDM

ELSE

	MACRO	m_getbits8

	call	p_getbits8

	ENDM

ENDIF


deexo3:

IF (PFLAG & PFLAG_BITS_ALIGN_START)
	xor	a
ELSE
	ld	a,(hl)
	inc	hl
ENDIF

	ex	af,af'	;'
	exx

	; initialize table 
	ld	iy,exo_mapbasebits - tbl_shift
	ld      bc,tbl_bytes

inittable:
	ld	a,c
IF ((-tbl_bytes) & 15)
	add	((-tbl_bytes) & 15)
ENDIF
	and	15
	jr	nz,.skp1
	ld	de,1
.skp1:
	exx

	ld	bc,0400h

	m_getbits8

	ld	a,c

	exx

IF (PFLAG & PFLAG_BITS_COPY_GT_7)

	srl	a
	jr	nc,.skp2
	ld	b,8
.skp2:	and	7
	or	b
ELSE
	and	15
ENDIF

	ld	(iy+tbl_ofs_bits),a
	ld	(iy+tbl_ofs_lo),e
	ld	(iy+tbl_ofs_hi),d
	inc	iy

	ld	hl,1
	jr	z,.skp3

	ld	b,a
.lp1:
	add	hl,hl
	djnz	.lp1

.skp3:
	add	hl,de
	ex	de,hl

	dec	c
	jr	nz,inittable

	exx
	ex	af,af'	;'

IF (PFLAG & PFLAG_IMPL_1LITERAL)

ELSE
	jr	next
ENDIF

literal_one:
	ldi

next:
	m_getbit

	jp	c,literal_one

	ld	b,0xff

.gamma:
	inc	b
	m_getbit
	jp	nc,.gamma

	ex	af,af'	;'

	ld	a,b
	cp	16
	ret	z

	cp	17
	jr	z,literal

	ld	b,0
	call	p_readtable

	push	bc

	ld	a,b
	or	a
	jr	nz,defaultofs
	dec	c
	jr	z,ofs1
	dec	c
	jr	z,ofs2
IF (PFLAG & PFLAG_4_OFFSET_TABLES)
	dec	c
	jr	z,ofs3

defaultofs:
	ld	a,16
	jr	ofsb4

ofs1:
	ld	a,64
	ld	bc,0200h
	jr	getofs

ofs2:
	ld	a,48
	jr	ofsb4

ofs3:
ELSE

defaultofs:
	ld	a,16
	jr	ofsb4

ofs1:
	ld	a,48
	ld	bc,0200h
	jr	getofs

ofs2:
ENDIF

	ld	a,32
ofsb4:
	ld	bc,0400h
getofs:

	m_getbits8

	add	c
	call	p_readtable

	ex	(sp),hl
	push	hl

	ld	h,d
	ld	l,e
	or	a
	sbc	hl,bc

	pop	bc

	ldir

	pop	hl

	ex	af,af'	;'
	jp	next

p_readtable:
	ld	c,a
	ld	iy,exo_mapbasebits - tbl_shift
	add	iy,bc

	ld	a,(iy+tbl_ofs_bits)

IF (PFLAG & PFLAG_BITS_COPY_GT_7)

	ld	c,a
	and	7
	ld	b,a
	ld	a,c

	ld	c,0

	jr	z,.skp3

	m_getbits8

.skp3:
	and	8
	jr	z,.skp4

	ld	b,c
	ld	c,(hl)
	inc	hl

.skp4:

ELSE

	call	p_getbits16

ENDIF

	push	hl
	ld	l,(iy+tbl_ofs_lo)
	ld	h,(iy+tbl_ofs_hi)
	add	hl,bc
	ld	c,l
	ld	b,h
	pop	hl
	ret

literal:

IF (PFLAG & PFLAG_BITS_COPY_GT_7)
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


IF (PFLAG & PFLAG_BITS_COPY_GT_7)
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
	ld	a,(hl)
	inc	hl

	m_filbit1

	ret

ENDIF

IF (INLINE_GETBITS8 == 1)

ELSE

p_getbits8:
	ex	af,af'	;'
.lp1:
	m_getbit
	rl	c
	djnz	.lp1

	ex	af,af'	;'

	ret

ENDIF

exo_mapbasebits:
	;DEFS    tbl_size_all


;//	LZE DECODE ROUTINE
;//	Original Copyright (C)1995,2008 GORRY.
;//	Porting for Z80 by Kei Moroboshi 2017/SEP.
;	.Z80

;	PUBLIC	DECODE_LZE
;================================================
;LZEデータをデコードする。
;in	HL	デコード前データへのポインタ
;	DE	デコード後データへのポインタ
;================================================

DECODE_LZE:
	PUSH	HL
	LD	BC,0	;CopyCount = 0;
	EXX
	POP	HL

	LD	BC,108H	;BitCount=1, BitCountReset=8
DECODE_LZE_1:
	LD	A,(HL)	;*(DECODEPtr++) = *(LZEPtr++);
	INC	HL
	EXX
	LD	(DE),A	;DE'=DECODEPtr
	INC	DE

DECODE_LZE_lp1:
	EXX

	DJNZ	SKIP	;if ( (--BitCount) == 0 ) {
	LD	D,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,C	;	BitCount = 8; }
SKIP:	SLA	D	;BitData <<= 1;

	JR	C,DECODE_LZE_1	;jc	DECODE_LZE_1

	DJNZ	SKIP0	;if ( (--BitCount) == 0 ) {
	LD	D,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,C	;	BitCount = 8; }
SKIP0:	SLA	D	;BitData <<= 1;

	JR	C,DECODE_LZE_01	;jc	DECODE_LZE_01

	DJNZ	SKIP00	;if ( (--BitCount) == 0 ) {
	LD	D,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,C	;	BitCount = 8; }
SKIP00:	SLA	D	;BitData <<= 1;
	EXX
	RL	C
	EXX
	DJNZ	SKIP01	;if ( (--BitCount) == 0 ) {
	LD	D,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,C	;	BitCount = 8; }
SKIP01:	SLA	D	;BitData <<= 1;
	LD	A,(HL)	;Distance = -256+((int)*(LZEPtr++));
	INC	HL
	EXX
	RL	C	;adc	CopyCount,CopyCount
	LD	H,-1	;Distance=-256+A;
	LD	L,A
DECODE_LZE_00_1:
	INC	C	;inc	CopyCount
DECODE_LZE_00_2:
	ADD	HL,DE	;HL':CopyPtr=HL:Distance + DE':DECODEPtr
	INC	BC	;inc	CopyCount
	LDIR		;copy
	JP	DECODE_LZE_lp1	;[[[ or JR ]]]

DECODE_LZE_01:
	LD	A,(HL)
	INC	HL
	EX	AF,AF'
	LD	A,(HL)
	INC	HL
	EXX
	LD	L,A
	AND	7		;and	CopyCount,7
	LD	C,A
	EX	AF,AF'
	RRA			;shr	Distance,1
	RR	L
	RRA			;shr	Distance,1
	RR	L
	RRA			;shr	Distance,1
	RR	L
	OR	0E0H		;or	DistanceH,0e0h
	LD	H,A

	EX	AF,AF'
	JP	NZ,DECODE_LZE_00_1	;[[[ or JR ]]]
 	EXX
	LD	A,(HL)
	INC	HL
	EXX
	LD	C,A	;C'=CopyCountL
	OR	A
	JP	NZ,DECODE_LZE_00_2	;[[[ or JR ]]]

;	EXX
DECODE_LZE_e:
	RET



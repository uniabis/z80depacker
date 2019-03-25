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
	PUSH	DE
	EXX
	POP	DE
	EXX

	LD	B,1	;BitCount=1
DECODE_LZE_lp0:
DECODE_LZE_1:
	LD	A,(HL)	;*(DECODEPtr++) = *(LZEPtr++);
	INC	HL
	EXX
	LD	(DE),A	;DE'=DECODEPtr
	INC	DE
	EXX

DECODE_LZE_lp1:
	DJNZ	SKIP	;if ( (--BitCount) == 0 ) {
	LD	C,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,8	;	BitCount = 8;
SKIP:	SLA	C	;	BitData <<= 1;

	JR	C,DECODE_LZE_1	;jc	DECODE_LZE_1

DECODE_LZE_0:
	EXX
	LD	HL,-1	;Distance=-1;
	EXX
	DJNZ	SKIP0	;if ( (--BitCount) == 0 ) {
	LD	C,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,8	;	BitCount = 8;
SKIP0:	SLA	C	;	BitData <<= 1;

	JR	C,DECODE_LZE_01	;jc	DECODE_LZE_01
DECODE_LZE_00:
	DJNZ	SKIP00	;if ( (--BitCount) == 0 ) {
	LD	C,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,8	;	BitCount = 8;
SKIP00:	SLA	C	;	BitData <<= 1;
	EXX
	LD	BC,0	;CopyCount = 0;
	RL	C
	RL	B	;adc	CopyCount,CopyCount
	EXX
	DJNZ	SKIP01	;if ( (--BitCount) == 0 ) {
	LD	C,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,8	;	BitCount = 8;
SKIP01:	SLA	C	;	BitData <<= 1;
	LD	A,(HL)	;	Distance = -256+((int)*(LZEPtr++));
	INC	HL
	EXX
	LD	L,A
	RL	C	;adc	CopyCount,CopyCount
	RL	B
DECODE_LZE_00_1:
	INC	BC	;inc	CopyCount
DECODE_LZE_00_2:
	ADD	HL,DE	;HL':CopyPtr=HL:Distance + DE':DECODEPtr
	INC	BC	;inc	CopyCount
	LDIR		;copy
	EXX
	JP	DECODE_LZE_lp1	;[[[ or JR ]]]

DECODE_LZE_01:
	LD	A,(HL)
	INC	HL
	EX	AF,AF'
	LD	A,(HL)
	INC	HL
	EXX
	LD	L,A
	EX	AF,AF'
;	LD	H,A
	LD	C,L		;mov	CopyCount,Distance
;	LD	B,H
;	LD	A,H
	RRA			;shr	Distance,1
	RR	L
	RRA			;shr	Distance,1
	RR	L
	RRA			;shr	Distance,1
	RR	L
	OR	0E0H		;or	DistanceH,0e0h
	LD	H,A

	LD	B,0
	LD	A,C
	AND	7		;and	CopyCount,7
	LD	C,A
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



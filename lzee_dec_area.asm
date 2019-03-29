;	LZEe DECODE ROUTINE
;
;	LZEe - LZE enhancement for Z80 by uniabis
;
;	LZE Original Copyright (C)1995,2008 GORRY.
;	Porting for Z80 by Kei Moroboshi 2017/SEP.
;
; License:zlib license or original LZE license
;
; This software is provided 'as-is', without any express or implied
; warranty. In no event will the authors be held liable for any damages
; arising from the use of this software.
;
; Permission is granted to anyone to use this software for any purpose,
; including commercial applications, and to alter it and redistribute it
; freely, subject to the following restrictions:
;
;    1. The origin of this software must not be misrepresented; you must not
;    claim that you wrote the original software. If you use this software
;    in a product, an acknowledgment in the product documentation would be
;    appreciated but is not required.
;
;    2. Altered source versions must be plainly marked as such, and must not be
;    misrepresented as being the original software.
;
;    3. This notice may not be removed or altered from any source
;    distribution.


;	.Z80

;	PUBLIC	DECODE_LZEE
;================================================
;in	HL	unpack source address
;	DE	unpack destination address
;================================================
;work	AF,BC,DE,HL,AF',BC',D',HL'
;
;================================================
DECODE_LZEE:
	PUSH	HL
	LD	BC,0	;CopyCount = 0;
	EXX
	POP	HL

	LD	BC,108H	;BitCount=1, BitCountReset=8
DECODE_LZEE_1:
	LD	A,(HL)	;*(DECODEPtr++) = *(LZEPtr++);
	INC	HL
	EXX
	LD	(DE),A	;DE'=DECODEPtr
	INC	DE

DECODE_LZEE_lp1:
	EXX

	CALL	DECODE_LZEE_GETBIT

	JR	C,DECODE_LZEE_1	;jc	DECODE_LZEE_1

	CALL	DECODE_LZEE_GETBIT

	JR	C,DECODE_LZEE_01	;jc	DECODE_LZEE_01

	CALL	DECODE_LZEE_GETBIT

	EXX
	RL	C
	EXX

	CALL	DECODE_LZEE_GETBIT

	LD	A,(HL)	;Distance = -256+((int)*(LZEPtr++));
	INC	HL
	EXX
	RL	C	;adc	CopyCount,CopyCount
	LD	H,-1	;Distance=-256+A;
	LD	L,A
DECODE_LZEE_00_1:
	INC	C	;inc	CopyCount
DECODE_LZEE_00_2:
	ADD	HL,DE	;HL':CopyPtr=HL:Distance + DE':DECODEPtr
	INC	BC	;inc	CopyCount
	LDIR		;copy
	JR	DECODE_LZEE_lp1	;[[[ or JP ]]]

DECODE_LZEE_GETBIT:
	DJNZ	SKIP	;if ( (--BitCount) == 0 ) {
	LD	D,(HL)	;	BitData = (int)*(LZEPtr++);
	INC	HL
	LD	B,C	;	BitCount = 8; }
SKIP:	SLA	D	;BitData <<= 1;
	RET

DECODE_LZEE_01:
	LD	A,(HL)
	INC	HL
	EX	AF,AF'
	LD	A,(HL)
	INC	HL
	EXX
	LD	L,A
	EX	AF,AF'
	LD	C,A
	OR	7
	RRCA			;shr	DistanceH,1
	RRCA			;shr	DistanceH,1
	RRCA			;shr	DistanceH,1
	LD	H,A
	LD	A,C
	AND	7
	LD	C,A
	JR	NZ,DECODE_LZEE_00_1	;[[[ or JP ]]]
 	EXX
	LD	A,(HL)
	INC	HL
	EXX
	LD	C,A	;C'=CopyCountL
	OR	A
	JR	NZ,DECODE_LZEE_00_2	;[[[ or JP ]]]

DECODE_LZEE_e:
	RET



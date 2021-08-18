; Z80 HRUST depacker.
;
; in: HL - from
;     DE - to
; kills: AF, BC,DE,HL, A', BC',DE',HL', IX(option)
; does not move anything before depacking, unlike dehrust_*_hdr.asm
;
; Uses HL to get packed stream, so somewhat slower than *_stk_* versions, but
;  it could be freely interrupted.
;
; you must USE -hst switch and must NOT USE -zxh switch to mhmt in order to get
;  correct packed stream for this depacker!

; length is 225 bytes, non-relocatable


DEHRUST


        ; +1byte, bit faster
        ;DEFINE AllowUsingIX



        macro mGETBIT preservea
        ADD HL,HL
        DJNZ .skip
        CALL pFILBUF + 1 - preservea
.skip:
        endm

        IFNDEF AllowUsingIX
        ELSE
        LD IX,LL403E
        ENDIF

        LD BC,0

        EXX

        LD DE,#BF10
        CALL pFILBUF + 1

LL4036  EXX

        INC C
        LDI

LL403E  EXX

LL403F  mGETBIT 0
        JR C,LL4036

        LD C,#01
LL4049  LD A,#80

LL404B  mGETBIT 1
        RLA
        JR C,LL404B
        CP #03
        JR C,LL405D
        ADD A,C
        LD C,A
        XOR E
        JR NZ,LL4049
LL405D  ADD A,C
        CP #04
        JR Z,LL40C4
        ADC A,#FF
        CP #02
        EXX
LL4067  LD C,A
LL4068  EXX
        LD A,#BF
        JR C,LL4082

LL406D  mGETBIT 1
        RLA
        JR C,LL406D
        JR Z,LL407D
        INC A
        ADD A,D
        JR NC,LL4084
        SUB D
LL407D  INC A
        JR NZ,LL408D
        LD A,#EF
LL4082  RRCA
        CP A

LL4084  mGETBIT 1
        RLA
        JR C,LL4084
LL408D  EXX

        JR NZ,LL4092

        PUSH HL
        LD H,#FF

        LD L,A

LL409C  ADD HL,DE
        LDIR

        POP HL

        IFNDEF AllowUsingIX
        JP LL403E
        ELSE
        JP (IX)
        ENDIF



LL40A1  POP HL

        EXX

        RRC D

        JR LL403F



LL4092  EX AF,AF' ; '

        LD A,(HL)
        INC HL

        PUSH HL

        LD L,A

        EX AF,AF' ; '

        LD H,A

        INC A
        JR NZ,LL409C

        LD A,L

        CP #E0
        JR C,LL409C
        RLCA
        XOR C
        INC A
        JR Z,LL40A1
        SUB #10

        DB #38 ; JR C,nn

LL40B1  PUSH HL
        LD L,A
        LD H,#FF
        LD C,H
        ADD HL,DE
        LDI

        INC HL

        EX (SP),HL

        LDI

        EX (SP),HL

        LDI

        POP HL

        IFNDEF AllowUsingIX
        JP LL403E
        ELSE
        JP (IX)
        ENDIF



LL40DE  CP #0F
        RET Z
        JR NC,LL4067
LL40D5  LD B,A
        LD C,(HL)
        INC HL
        CCF ; CF=0(!CF), ZF=ZF(preserved)
        JR LL4068



LL40C4  LD A,#80

LL40C6  mGETBIT 1
        ADC A,A
        JR NZ,LL40F3

        JR C,LL40C6
        LD A,#FC
        JR LL40F6



LL40F3  SBC A,A ; ZF=!CF
        LD A,#EF

LL40F6  mGETBIT 1
        RLA
        JR C,LL40F6
        EXX
        JR NZ,LL40B1
        OR A
        JP P,LL40DE
        SUB #EA
        ADD A,A

        LD C,A

        LDIR

        IFNDEF AllowUsingIX
        JP LL403E
        ELSE
        JP (IX)
        ENDIF



pFILBUF LD B,A

        EXX

        LD A,(HL)
        INC HL

        EX AF,AF' ; '

        LD A,(HL)
        INC HL

        EXX

        LD H,A

        EX AF,AF' ; '

        LD L,A

        LD A,B

        LD B,E

        RET




; Z80 HRUST depacker.
;
; in: HL - from
;     DE - to
; kills: AF, BC,DE,HL, BC',DE',HL', IX
; does not move anything before depacking, unlike dehrust_*_hdr.asm
;
; Uses IX to get packed stream, so somewhat slower than *_stk_* versions, but
;  it could be freely interrupted.
;
; you must USE -hst switch and must NOT USE -zxh switch to mhmt in order to get
;  correct packed stream for this depacker!

; length is 231 bytes, non-relocatable


DEHRUST
        PUSH    HL
        POP     IX
        LD      B,0

        EXX
        LD DE,#BF10
        CALL LL4115
LL4036  LD A,(IX+#00)
        EXX
LL403C  INC IX
        LD (DE),A
        INC DE
LL403E  EXX
LL403F  ADD HL,HL
        DJNZ LL4045
        CALL LL4115
LL4045  JR C,LL4036
        LD C,#01
LL4049  LD A,#80
LL404B  ADD HL,HL
        DJNZ LL4051
        CALL LL4115
LL4051  RLA
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
LL406D  ADD HL,HL
        DJNZ LL4073
        CALL LL4115
LL4073  RLA
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
LL4084  ADD HL,HL
        DJNZ LL408A
        CALL LL4115
LL408A  RLA
        JR C,LL4084
LL408D  EXX
        LD H,#FF
        JR Z,LL409B
        LD H,A
        INC A
        LD A,(IX+#00)
        INC IX
        JR Z,LL40A6
LL409B  LD L,A
        ADD HL,DE
        LDIR
        JP LL403E



LL40A1  EXX
        RRC D
        JR LL403F



LL40A6  CP #E0
        JR C,LL409B
        RLCA
        XOR C
        INC A
        JR Z,LL40A1
        SUB #10
LL40B1  LD L,A
        LD C,A
        LD H,#FF
        ADD HL,DE
        LDI
        LD A,(IX+#00)
        LD (DE),A
        INC HL
        INC DE
        LD A,(HL)
        JP LL403C



LL40DE  CP #0F
        RET Z
        JR NC,LL4067
LL40D5  LD B,A
        LD C,(IX+#00)
        INC IX
        CCF
        JR LL4068



LL4115  LD B,E
        LD L,(IX+#00)
        INC IX
        LD H,(IX+#00)
        INC IX
        RET



LL40C4  LD A,#80
LL40C6  ADD HL,HL
        DJNZ LL40CC
        CALL LL4115
LL40CC  ADC A,A
        JR NZ,LL40F3

LL40CF  JR C,LL40C6
LL40D1  LD A,#FC
        JR LL40F6



LL40F3  SBC A,A
        LD A,#EF

LL40F6  ADD HL,HL
        DJNZ LL40FC
        CALL LL4115
LL40FC  RLA
        JR C,LL40F6
        EXX
        JR NZ,LL40B1
        OR A
        JP P,LL40DE
        SUB #EA
        ADD A,A
        LD B,A
LL410A  LD A,(IX+#00)
        INC IX
        LD (DE),A
        INC DE
        DJNZ LL410A
        JP LL403E




; Z80 HRUST depacker.
;
; in: HL - from
;     DE - to
; kills: AF, BC,DE,HL, BC',DE',HL', IX
; does not move anything before depacking, unlike dehrust_stk_hdr.asm
;
; WARNING! uses stack to read packed stream, so run it either with interrupts
;  disabled OR make sure there is enough place for interrupt stack frame
;  BEFORE the beginning of packed stream AND take into account that packed
;  stream will be DESTROYED.
;
; you must USE -hst switch and must NOT USE -zxh switch to mhmt in order to get
;  correct packed stream for this depacker!

; length is 208 bytes, fully relocatable

dehrust:
                LD      IX,0
                ADD     IX,SP

                LD      SP,HL

                LD      B,0
                EXX 
                LD      BC,#10BF
                LD      D,B
                POP     HL

loc_6037:
                DEC     SP
                POP     AF
                EXX 

loc_603A:
                LD      (DE),A
                INC     DE

loc_603C:
                EXX 

loc_603D:
                ADD     HL,HL
                DJNZ    loc_6042
                POP     HL
                LD      B,D

loc_6042:
                JR      C,loc_6037
                LD      E,1

loc_6046:
                LD      A,#80

loc_6048:
                ADD     HL,HL
                DJNZ    loc_604D
                POP     HL
                LD      B,D

loc_604D:
                RLA 
                JR      C,loc_6048
                CP      3
                JR      C,loc_6059
                ADD     A,E
                LD      E,A
                XOR     D
                JR      NZ,loc_6046

loc_6059:
                ADD     A,E
                CP      4
                JR      Z,loc_60B8
                ADC     A,#FF
                CP      2
                EXX 

loc_6063:
                LD      C,A

loc_6064:
                EXX 
                LD      A,#BF
                JR      C,loc_607D

loc_6069:
                ADD     HL,HL
                DJNZ    loc_606E
                POP     HL
                LD      B,D

loc_606E:
                RLA 
                JR      C,loc_6069
                JR      Z,loc_6078
                INC     A
                ADD     A,C
                JR      NC,loc_607F
                SUB     C

loc_6078:
                INC     A
                JR      NZ,loc_6087
                LD      A,#EF

loc_607D:
                RRCA 
                CP      A

loc_607F:
                ADD     HL,HL
                DJNZ    loc_6084
                POP     HL
                LD      B,D

loc_6084:
                RLA 
                JR      C,loc_607F

loc_6087:
                EXX 
                LD      H,-1
                JR      Z,loc_6092
                LD      H,A
                DEC     SP
                INC     A
                JR      Z,loc_609D
                POP     AF

loc_6092:
                LD      L,A
                ADD     HL,DE
                LDIR 

loc_6096:
                JR      loc_603C
; ----

loc_6098:
                EXX 
                RRC     C
                JR      loc_603D
; ----

loc_609D:
                POP     AF
                CP      #E0
                JR      C,loc_6092
                RLCA 
                XOR     C
                INC     A
                JR      Z,loc_6098
                SUB     #10

loc_60A9:
                LD      L,A
                LD      C,A
                LD      H,#FF
                ADD     HL,DE
                LDI 
                DEC     SP
                POP     AF
                LD      (DE),A
                INC     HL
                INC     DE
                LD      A,(HL)
                JR      loc_603A
; ----

loc_60B8:
                LD      A,#80

loc_60BA:
                ADD     HL,HL
                DJNZ    loc_60BF
                POP     HL
                LD      B,D

loc_60BF:
                ADC     A,A
                JR      NZ,loc_60DB
                JR      C,loc_60BA
                LD      A,#FC
                JR      loc_60DE
; ----

loc_60C8:
                DEC     SP
                POP     BC
                LD      C,B
                LD      B,A
                CCF 
                JR      loc_6064
; ----

loc_60CF:
                CP      #0F
                JR      C,loc_60C8
                JR      NZ,loc_6063
                LD      SP,IX
                RET 
; ----

loc_60DB:
                SBC     A,A
                LD      A,#EF

loc_60DE:
                ADD     HL,HL
                DJNZ    loc_60E3
                POP     HL
                LD      B,D

loc_60E3:
                RLA 
                JR      C,loc_60DE
                EXX 
                JR      NZ,loc_60A9
                BIT     7,A
                JR      Z,loc_60CF
                SUB     #EA
                EX      DE,HL
loc_60F0:
                POP     DE
                LD      (HL),E
                INC     HL
                LD      (HL),D
                INC     HL
                DEC     A
                JR      NZ,loc_60F0
                EX      DE,HL
                JR      loc_6096

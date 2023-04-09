; Recommended compiler: SjASM 1.07 (https://vtrd.in/pcutilz/SJASMRC7.zip)
; Compiled size: 228 bytes
; Params:
;  IX = src addr
;  DE = dest addr -1

        OUTPUT derip.C

workarea=#0800
;workarea=#F880 ;must be >=#0200
;workareaSize=#5C2
maintree=workarea
tree=maintree+0x120*4
bitlens2=tree+0x120

        ;ORG #5B00

        ;LD IX, src
        PUSH DE ;dest-1

        LD BC,#1201
        LD DE,tree-1
        PUSH DE
L0      LD A,#10
L1      CALL mWBIT
        RLA 
        JR NC, L1
        INC DE
        LD (DE),A
        DJNZ L0

        PUSH BC
        LD DE,18+1
        CALL mMTRE
        POP BC
        POP DE ;tree-1
GETLEN0 CALL mHFMAI
        CP 16
        JR C, GETLEN_
        LD A,(DE)
        INC DE
        LD (DE),A
GETLEN_ INC DE
        LD (DE),A
        JR NZ, GETLEN0

GETLENQ PUSH BC
        LD DE,0x120+1
        CALL mMTRE
        LD HL,bitlens2-2
        LD DE,32+1
        EXX 
        LD DE,tree
        CALL mTRE
        ;LD HL,#2758:EXX ;uncomment if returning to Basic
        POP BC

        POP DE ;dest-1
        ;LD DE,dest-1

MAINLOOP2
        INC DE
MAINLOOP1
        CALL mHFMAI
        LD (DE),A
        DEC H
        JR NZ, MAINLOOP2
        OR A
        RET Z  ;JP Z,START
        CALL LLEN  ;match len
        PUSH HL
        LD HL,tree
        CALL mHFM
        OR A
        JR Z, CPY1
        CALL LLEN  ;new offset ;cf=0
        LD (MOFFSET+1), HL
        LD A,H
        OR A
CPY1
        LD A,C
        POP BC ;len
        JR Z, $+3 ; offset<256 or using last offset?
        INC BC
COPY    ;cf=0
        PUSH DE
        EX DE,HL
MOFFSET LD DE, 0
        SBC HL,DE
        POP DE
        LDIR 
        LD C,A ;restore bitbuf
        JR MAINLOOP1

; Read bit
mWBIT   SRL C
        RET NZ
mWBYTE  LD C,(IX)
        INC IX
        RR C
        RET 

mMTRE
        LD HL,tree-2
        EXX 
        LD DE,maintree

; Build tree
; HL' = lengths table-2
; DE' = number of codes+1
; DE = result tree
mTRE    LD H,D
        LD L,E
        XOR A
        PUSH AF
        INC A
        PUSH HL,AF
        LD C,A
mTRE0   EXX 
        LD B,D
        LD C,E
        ADD HL,BC
        EXX 
mTRE1   LD B,A
        LD A,C
        EXX 
        CPDR 
        LD A,B
        OR C
        EXX 
        LD A,B
        JR NZ, mTREY
        INC C
        JR mTRE0
mTREdip INC E,DE,E,DE
        LD (HL),D ;ptr to children
        INC L
        LD (HL),E
        LD H,D
        LD L,E
        INC A
        PUSH HL,AF
mTREY   CP C
        JR NZ, mTREdip
        EXX 
        PUSH BC
        EXX 
        POP BC
        DEC BC
        LD (HL),B ;leaf
        INC L
        LD (HL),C
        LD C,A
        POP AF
        RET Z
        POP HL
        INC L,HL
        JR mTRE1

LLEN    ADD A,-5
        RET NC
        LD L,1
        ADC A,L
        RRA
        RL L
        CALL mWBIT
        ADC HL,HL
        DEC A
        JR NZ, $-6
        INC HL
        RET 

; Read code from tree
mHFMAI  LD HL,maintree
mHFM    CALL mWBIT
        JR NC, $+4
        INC L,HL
        LD A,(HL)
        INC L
        CP H ;H>=2
        LD L,(HL)
        LD H,A
        JR NC, mHFM
        LD A,L
        RET 
END

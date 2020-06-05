; Madram/OVL version / modified roudoudou
; V1: replace D4 (32 bits) by A':   16.03 s      
; V2: replace D3 by DE'             14.83 s   / 217 bytes
; V3: exx' by default (prepare v4)  14.86 s   / 234 bytes
; V4: replace D6 by HL'             14.23 s   / 217 bytes   #800 buffer
; v5: slight cleanup                14.10 s   / 215 bytes
; v6: reintroduce MSB table trick   ----------  idem        Discarded
; v7: slight getkind factorization  14.23 s   / 213 bytes
; v8: replace D5 by HL              14.23 s   / 209 bytes
; v9: DE init optimisation          14.23 s   / 208 bytes
; vA: no more parity context                  / 202 bytes

; CALL shrinkler_decrunch
; input IX=source
; input DE=destination


getnumber
;in: hl point to prob table
;out: bc = number
    ; EXX' !

_numberloop
          INC  L
          INC  L
          CALL getbit
          JR   C,_numberloop

          EXX
          LD   BC,1
          EXX
_bitsloop
          DEC  L
          CALL getbit
          EXX
          RL   C
          RL   B
          EXX
          DEC  L
          JR   NZ,_bitsloop
          EXX
          RET

;-----------------------------------
readbit
          SLA  E
	  RL   D ; d3 <<= 1
          EX   AF,AF'
          ADD  A
          JR   NZ,_rbok
          LD   A,(IX)
	  INC  IX
          SLL  A
_rbok

          PUSH HL
d2        LD   HL,#00   ; TODO replace by IY
          ADC  HL,HL
          LD   (d2+1),HL
          POP  HL
          EX   AF,AF'
          JR   getbit

getkind
; do not use parity as context anymoar
          EXX
          LD   HL,probs

getbit
;In: hl points to context prob
; de = d3 
;Out: hl preserved
; de = new d3 value 
          LD   A,D      ; d3
          ADD  A
          JR   NC,readbit

          LD   B,(HL)
          INC  H
          LD   C,(HL)
          PUSH HL
;d1 = one prob
          LD   L,C
          LD   H,B      ; bc=hl=d1 
          PUSH BC
          LD   A,%11100001 ;MSQ: cpt 4
shift4
          SRL  B
          RR   C
          ADD  A
          JR   C,shift4
          SBC  HL,BC    ; hl=d1-d1/16
          POP  BC
          PUSH HL
;here, A = 16       
          SBC  HL,HL
; bchl = bc*de
muluw
          ADD  HL,HL
          RL   C
          RL   B
          JR   NC,_mulcont
          ADD  HL,DE
          JR   NC,_mulcont
          INC  BC
_mulcont
          DEC  A
          JR   NZ,muluw

          LD   HL,(d2+1)
          OR   A
	  SBC  HL,BC
          JR   NC,zero

one
          LD   E,C
          LD   D,B      ; d3 = d3*d1
          POP  BC
; + #fff
          LD   A,B
	  SUB  #F0 ; force Carry
          LD   B,A
          DEC  BC
          JR   _probret

shrinkler_decrunch

          EXX
          LD   HL,8*256+probs
          LD   B,8
          XOR  A        ; start by LSB
	ld d,a
init
          DEC  H
iniloop   LD   (HL),A
	  INC  L
	  JR   NZ,iniloop ; fill #100 row
          XOR  #80
	ld e,b
          DJNZ init

          EX   AF,AF'    ; A'= either 0 or #80, nevermind

; Here HL=probs

literal
          SCF
getlit    CALL NC,getbit
          RL   L        ; bits = context
          JR   NC,getlit
          LD   A,L
          EXX
          LD   (DE),A
	  INC  DE
;after literal
          CALL getkind
          JR   NC,literal
;reference                       
; l=0 here
          LD   H,probs_ref / 256
          CALL getbit
          JR   NC,readoffset
readlength
          LD   H,probs_length / 256
          CALL getnumber
          PUSH HL       ; keep offset for next time
          ADD  HL,DE
          LDIR
          POP  HL
          CALL getkind
          JR   NC,literal
readoffset
          LD   H,probs_offset / 256
          CALL getnumber
          LD   HL,#02
          SBC  HL,BC
          EXX
          JR   NZ,readlength
;END!!!        
          RET

zero
          LD   (d2+1),HL
          EX   DE,HL
          SBC  HL,BC    ; d3.  still NC after
          EX   DE,HL
          POP  BC
_probret
          POP  HL
          LD   (HL),C
          DEC  H
          LD   (HL),B
          RET
probs=($+256)&#FF00
;+#200: for odd context
probs_ref = probs+#400 ; one word
probs_length = probs_ref ; starts at +1
probs_offset = probs_length + #200 ; could be + #40 by changing test


; pletter v0.5c msx unpacker

; call unpack with hl pointing to some pletter5 data, and de pointing to the destination.
; changes all registers

; define lengthindata when the original size is written in the pletter data

;  define LENGTHINDATA

  module pletter

  ;OPTIMIZE_JUMP
  ; 0 : 140 bytes
  ; 1 : 143 bytes
  ; 2 : 146 bytes, use IY
  define OPTIMIZE_JUMP 2

  macro GETBIT
  add a,a
  call z,getbit
  endm

@unpack

  ifdef LENGTHINDATA
  inc hl
  inc hl
  endif

  ld a,(hl)
  inc hl

  push hl

  ld bc,-1
  xor 0e0h
  scf
  adc a,a
  rl c
  add a,a
  rl c
  add a,a
  rl c

  ld hl,offsok
  inc c
  jr z,.mode1
  sla c

  ld hl,mode2+6
  add hl,bc
  add hl,bc
  add hl,bc

.mode1:
  ex (sp),hl
  pop ix

  if OPTIMIZE_JUMP=2
  ld iy,loop
  endif
  jr literal

filbuf
  ld a,(hl)
  inc hl
  rla
  jr c,getlen

literal
  ldi
loop
  add a,a
  jr nc,literal
  jr z,filbuf

getlen
  GETBIT

  ld bc,1
  jr nc,.lenok
.lus
  GETBIT
  rl c
  rl b
  ret c
  GETBIT
  if OPTIMIZE_JUMP>0
  jp c,.lus
  else
  jr c,.lus
  endif
.lenok

  push de

  ld e,(hl)
  inc hl
  ld d,0
  bit 7,e
  if OPTIMIZE_JUMP>0
  jp z,offsok
  else
  jr z,offsok
  endif
  jp (ix)

mode6
  GETBIT
  rl d
mode5
  GETBIT
  rl d
mode4
  GETBIT
  rl d
mode3
  GETBIT
  rl d
mode2
  GETBIT
  rl d
  GETBIT
  jr nc,offsok
  inc d
  res 7,e
offsok

  ex (sp),hl
  push hl
  scf
  sbc hl,de
  pop de

  ldir
  ldi
  pop hl
  if OPTIMIZE_JUMP=2
  jp (iy)
  else
  if OPTIMIZE_JUMP=1
  jp loop
  else
  jr loop
  endif
  endif

getbit
  ld a,(hl)
  inc hl
  rla
  ret

  endmodule

;eof
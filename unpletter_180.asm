; pletter v0.5c msx unpacker

; call unpack with hl pointing to some pletter5 data, and de pointing to the destination.
; changes all registers

; define lengthindata when the original size is written in the pletter data

;  define LENGTHINDATA

  module pletter

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

  ld iy,loop
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
  jr z,filbuf
  jr nc,literal

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
  jp c,.lus
.lenok

  push de

  ld e,(hl)
  inc hl
  ld d,0
  bit 7,e
  jp z,offsok
  jp ix

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
  jp iy

getbit
  ld a,(hl)
  inc hl
  rla
  ret

  endmodule

;eof
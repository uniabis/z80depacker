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

  ld bc,0
  add a,a
  inc a
  rl c
  add a,a
  rl c
  add a,a
  rl c
  ld hl,modes
  add hl,bc
  add hl,bc
  ld c,(hl)
  inc hl
  ld b,(hl)

  push bc
  pop ix

  pop hl

  ld iy,loop

literal
  ldi
loop
  GETBIT
  jr nc,literal

getlen
  GETBIT

  ld bc,1
  jr nc,.lenok
.lus
  GETBIT
  rl c
  rl b
  GETBIT
  jr nc,.lenok
  GETBIT
  rl c
  rl b
  ret c
  GETBIT
  jp c,.lus
.lenok
  inc bc

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
  pop hl
  jp iy

getbit
  ld a,(hl)
  inc hl
  rla
  ret

modes
  word offsok
  word mode2
  word mode3
  word mode4
  word mode5
  word mode6

  endmodule

;eof
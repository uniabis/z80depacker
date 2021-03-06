;Exomizer 3 Z80 decoder
;Copyright (C) 2008-2018 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi
;
;Compression algorithm by Magnus Lind
;   exomizer raw -P0 -T0 (literals=1, PFLAG_CODE=0)
;   exomizer raw -P0 -T1 (literals=0, PFLAG_CODE=0)
;   exomizer raw -P7 -T0 (literals=1, PFLAG_CODE=7)
;   exomizer raw -P7 -T1 (literals=0, PFLAG_CODE=7)
;   exomizer raw -P15 -T0 (literals=1)
;   exomizer raw -P15 -T1 (literals=0)
;
;   This depacker is free software; you can redistribute it and/or
;   modify it under the terms of the GNU Lesser General Public
;   License as published by the Free Software Foundation; either
;   version 2.1 of the License, or (at your option) any later version.
;
;   This library is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;   Lesser General Public License for more details.
;
;   You should have received a copy of the GNU Lesser General Public
;   License along with this library; if not, write to the Free Software
;   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
;

  DEFINE PFLAG_BITS_ORDER_BE (1<<0)
  DEFINE PFLAG_BITS_COPY_GT_7 (1<<1)
  DEFINE PFLAG_IMPL_1LITERAL (1<<2)
  DEFINE PFLAG_BITS_ALIGN_START (1<<3)
  DEFINE PFLAG_4_OFFSET_TABLES (1<<4)

  IFNDEF PFLAG_CODE
    IFNDEF bitsalignstart
      ; -P0 (Exomizer2 raw compatible)
      ;DEFINE PFLAG_CODE 0
      ; -P7 (Exomizer3 raw default)
      ;DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL)
      ; -P15
      DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START)
    ELSE
      IF bitsalignstart=0
        ; -P7 (Exomizer3 raw default)
        DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL)
      ELSE
        ; -P15
        DEFINE PFLAG_CODE (PFLAG_BITS_ORDER_BE | PFLAG_BITS_COPY_GT_7 | PFLAG_IMPL_1LITERAL | PFLAG_BITS_ALIGN_START)
      ENDIF
    ENDIF
  ENDIF

  IF (PFLAG_CODE & PFLAG_4_OFFSET_TABLES)
    DEFINE map_len (16*4+4)
  ELSE
    DEFINE map_len (16*3+4)
  ENDIF
  IF  ((low mapbase)<256+(128-16)-128) && ((low mapbase)>(128-16)-map_len*2+127)
    DEFINE map_ofs 0
  ELSE
    DEFINE map_ofs (128-16)
  ENDIF
map_iyh equ (high (mapbase-map_ofs+128))
map_disp_bit equ ((low (mapbase-map_ofs+128))-128)
map_disp_lo equ (map_disp_bit+map_len*1)
map_disp_hi equ (map_disp_bit+map_len*2)

        ld      iy, map_iyh*256+map_ofs

        cp      a       ;set ZF
        ex      af, af';'

        ld      bc, map_len * 256 + 16

    IF (PFLAG_CODE & PFLAG_BITS_ALIGN_START)
        scf
    ELSE
        or      a       ;reset CF
    ENDIF

gb4     ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
get4    adc     a, a
      ELSE
get4    rr      a
      ENDIF
get4l   jr      z, gb4
        rl      c
        jr      nc, get4

        ex      af, af';'
        ld      a, c

        exx

        ld      hl, 1
        jr      nz, .skp1
        ld      d, h
        ld      e, l
        ld      c, 16
.skp1   ld      (iy+map_disp_lo), e
        ld      (iy+map_disp_hi), d

    IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)
        rrca
        inc     a

        ld      (iy+map_disp_bit), a

        jr      nc, get5
        sub     128-8+1
setbit  add     hl, hl
get5    dec     a
        jr      nz, setbit
    ELSE

        inc     a
        ld      b, a
        defb    40      ;40=028h;JR Z,nnnn

setbit  add     hl, hl
        djnz    setbit

        cp      8+1
        jr      c, bit0
        add     080h-8

bit0    ld      (iy+map_disp_bit), a

    ENDIF

        add     hl, de
        ex      de, hl

      IFNDEF HD64180
        inc     iyl
      ELSE
        inc     iy
      ENDIF
        dec     c
        ex      af, af';'
        exx

        ld      c, 16
    IF (PFLAG_CODE & PFLAG_IMPL_1LITERAL)
        or      a       ;reset CF
        djnz    get4
    ELSE
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        add     a, a
      ELSE
        srl     a
      ENDIF
        djnz    get4l
    ENDIF

      IFNDEF OPTIMIZE_JUMP
      ELSE
        ld      ix, mloop
      ENDIF
    IF (PFLAG_CODE & PFLAG_IMPL_1LITERAL)
        jr      litcop
    ELSE
        jr      mloopl
    ENDIF

gbi     ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        adc     a, a
      ELSE
        rra
      ENDIF

      IFNDEF OPTIMIZE_JUMP
        jr      gbic
      ELSE
        jp      gbic
      ENDIF

gbm     ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        adc     a, a
      ELSE
        rra
      ENDIF
        jr      nc, gbmc

litcop  ldi
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
mloop   add     a, a
      ELSE
mloop   srl     a
      ENDIF
mloopl  jr      z, gbm
        jr      c, litcop
    IFNDEF HD64180
gbmc    ld      c, (map_ofs-1) & 255
    ELSE
gbmc    ld      bc, (map_ofs-1) & 255
    ENDIF
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
getind  add     a, a
      ELSE
getind  srl     a
      ENDIF
        jr      z, gbi
gbic    inc     c
        jr      nc, getind
    IF  map_ofs==0
        bit     4, c
      IF  literals=1
        jr      nz, litcat
      ELSE
        ret     nz
      ENDIF
    ELSE
      IF  literals=1
        jp      m, litcat
      ELSE
        ret     m
      ENDIF
    ENDIF
        push    de
        ex      de, hl

    IFNDEF HD64180
        ld      iyl, c
        ld      c, 0
        or      a
    ELSE
        ld      iy, map_iyh*256
        add     iy, bc
        ld      c, b
    ENDIF

        ld      b, (iy+map_disp_bit)
        dec     b
        call    nz, getbits
        ld      l, (iy+map_disp_lo)
        ld      h, (iy+map_disp_hi)
        add     hl, bc
        push    hl
        inc     h
        dec     h
        jr      nz, dontgo
      IF (PFLAG_CODE & PFLAG_4_OFFSET_TABLES)
        ld      bc, 2*256+(map_ofs+64)/4
        dec     l
        jr      z, goit
        ld      bc, 4*256+(map_ofs+48)/16
      ELSE
        ld      bc, 2*256+(map_ofs+48)/4
      ENDIF
        dec     l
        jr      z, goit
        dec     l
dontgo  ld      bc, 4*256+(map_ofs+32)/16
        jr      z, goit
        dec     c

goit    call    lee8

    IFNDEF HD64180
        ld      iyl, c
    ELSE
        ld      iy, map_iyh*256
        add     iy, bc
    ENDIF
        ld      c, b

        ld      b, (iy+map_disp_bit)
        dec     b
        call    nz, getbits
        ld      l, (iy+map_disp_lo)
        ld      h, (iy+map_disp_hi)
        add     hl, bc
        ex      de, hl
        pop     bc
        ex      (sp), hl
        push    hl
        sbc     hl, de
        pop     de
        ldir
        pop     hl
      IFNDEF OPTIMIZE_JUMP
        jr      mloop
      ELSE
        jp      (ix)
      ENDIF

    IF  literals=1
litcat:
      IF  map_ofs==0
        bit     0, c
        ret     z
      ELSE
        ret     pe
      ENDIF

      IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)
        ld      b, (hl)
        inc     hl
        ld      c, (hl)
        inc     hl
      ELSE
        ld      bc, 8 * 256
        or      a
        ex      de, hl
        call    lee16
        ex      de, hl
      ENDIF
        ldir
      IFNDEF OPTIMIZE_JUMP
        jr      mloop
      ELSE
        jp      (ix)
      ENDIF
    ENDIF

getbits jp      p, lee8
        sla     b
        jr      z, gby
        srl     b
        defb    250     ;250=0FAh;JP M,nnnn
xopy    ld      a, (de)
        inc     de

      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
lee16   adc     a, a
      ELSE
lee16   rr      a
      ENDIF
        jr      z, xopy
        rl      c
        djnz    lee16
        ld      b, c

    IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)

gby     ex      de, hl
        ld      c, (hl)
        inc     hl
        ex      de, hl
        ret

    ELSE

gby     ld      c, 1
        or      a
        defb    218     ;218=0DAh;JP C,nnnn
.f      ld      a, (de)
        inc     de

      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
.l      adc     a, a
      ELSE
.l      rr      a
      ENDIF
        jr      z, .f
        rl      c
        jr      nc, .l
        ret

    ENDIF

copy    ld      a, (de)
        inc     de
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
lee8    adc     a, a
      ELSE
lee8    rr      a
      ENDIF
        jr      z, copy
        rl      c
        djnz    lee8
        ret
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
  ;DEFINE PFLAG_4_OFFSET_TABLES (1<<4)

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

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      iy, 256+mapbase/256*256
      ELSE
        ld      iy, (mapbase+16)/256*256+112
      ENDIF

        cp      a	;set ZF
        ex      af, af';'

        ld      bc, 52 * 256 + 16

    IF (PFLAG_CODE & PFLAG_BITS_ALIGN_START)
        or      a       ;reset CF
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        ld      a, 080h
      ELSE
        ld      a, 001h
      ENDIF
        defb    218     ;218=0DAh;JP C,nnnn
    ELSE
        or      a       ;reset CF
        ;scf             ;set CF
    ENDIF

gb4     ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
get4    adc     a, a
      ELSE
get4    rr      a
      ENDIF
        jr      z, gb4
        rl      c
        jr      nc, get4

        ex      af, af';'
        ld      a, c

        exx

        ld      hl, 1
        jr      nz,.skp1
        ld      d, h
        ld      e, l
        ld      c, 16
.skp1:

    IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)
        rrca
        inc     a

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-256+mapbase-mapbase/256*256), a
        ld      (iy-204+mapbase-mapbase/256*256), e
        ld      (iy-152+mapbase-mapbase/256*256), d
      ELSE
        ld      (iy-112+mapbase-(mapbase+16)/256*256), a
        ld      (iy-60+mapbase-(mapbase+16)/256*256), e
        ld      (iy-8+mapbase-(mapbase+16)/256*256), d
      ENDIF

        jr      nc, get5
        sub     128-8+1
setbit  add     hl, hl
get5:   dec     a
        jr      nz, setbit
    ELSE

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-204+mapbase-mapbase/256*256), e
        ld      (iy-152+mapbase-mapbase/256*256), d
      ELSE
        ld      (iy-60+mapbase-(mapbase+16)/256*256), e
        ld      (iy-8+mapbase-(mapbase+16)/256*256), d
      ENDIF

        or      a
        jr      z, bit0

        ld      b, a

setbit  add     hl, hl
        djnz    setbit

        bit     3, a
        jr      z, bit0
        add     080h-8

bit0    inc     a

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-256+mapbase-mapbase/256*256), a
      ELSE
        ld      (iy-112+mapbase-(mapbase+16)/256*256), a
      ENDIF

    ENDIF

        add     hl, de
        ex      de, hl

      IFNDEF HD64180
        inc     iyl
      ELSE
        inc     iy
      ENDIF
        dec     c
        ex      af,af';'
        exx

        ld      c,16
        or      a       ;reset CF
        djnz    get4

      IF (PFLAG_CODE & PFLAG_IMPL_1LITERAL)
        jr      litcop
      ELSE
        jr      mloop
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
        jr      z, gbm
        jr      c, litcop
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
gbmc    ld      c, 256-1
      ELSE
gbmc    ld      c, 112-1
      ENDIF
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
getind  add     a, a
      ELSE
getind  srl     a
      ENDIF
        jr      z, gbi
gbic    inc     c
        jr      nc, getind
    IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
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
        ccf
        push    de

    IFNDEF HD64180
        ld      iyl, c
        ld      c, 0
    ELSE
        ld      b,0
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      iy, 256+mapbase/256*256
      ELSE
        ld      iy, (mapbase+16)/256*256
      ENDIF
        add     iy, bc
        ld      c, b
    ENDIF

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, getbits
        ex      de, hl
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      l, (iy-204+mapbase-mapbase/256*256)
        ld      h, (iy-152+mapbase-mapbase/256*256)
      ELSE
        ld      l, (iy-60+mapbase-(mapbase+16)/256*256)
        ld      h, (iy-8+mapbase-(mapbase+16)/256*256)
      ENDIF
        add     hl, bc
        ex      de, hl
        push    de
        inc     d
        dec     d
        jr      nz, dontgo
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      bc, 512+48/4
      ELSE
        ld      bc, 512+160/4
      ENDIF
        dec     e
        jr      z, goit
        dec     e
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
dontgo  ld      bc, 1024+32/16
      ELSE
dontgo  ld      bc, 1024+144/16
      ENDIF
        jr      z, goit
        dec     c
goit:
        call    lee8

    IFNDEF HD64180
        ld      iyl, c
        ld      c, b
    ELSE
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      iy, 256+mapbase/256*256
      ELSE
        ld      iy, (mapbase+16)/256*256
      ENDIF
        add     iy, bc
        ld      c, b
    ENDIF

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, getbits
        ex      de, hl
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      l, (iy-204+mapbase-mapbase/256*256)
        ld      h, (iy-152+mapbase-mapbase/256*256)
      ELSE
        ld      l, (iy-60+mapbase-(mapbase+16)/256*256)
        ld      h, (iy-8+mapbase-(mapbase+16)/256*256)
      ENDIF
        add     hl, bc
        ex      de, hl
        pop     bc
        ex      (sp), hl
        push    hl
        sbc     hl, de
        pop     de
        ldir
        pop     hl
        jr      mloop

    IF  literals=1
litcat:
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
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
        call    getbits16
      ENDIF
        ldir
        jr      mloop
    ENDIF

gbi     ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        adc     a, a
      ELSE
        rra
      ENDIF
        jp      gbic

    IF (PFLAG_CODE & PFLAG_BITS_COPY_GT_7)

getbits jp      p, lee8
        sla     b
        jr      z, gby
        srl     b
        defb    250     ;250=0FAh;JP M,nnnn
xopy    ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
lee16   adc     a, a
      ELSE
lee16   rr     a
      ENDIF
        jr      z, xopy
        rl      c
        djnz    lee16
        ld      b,c
gby     ld      c, (hl)
        inc     hl
        ret

    ELSE

getbits jp      p, lee8
        sla     b
        jr      z, gby
        srl     b
        defb    250     ;250=0FAh;JP M,nnnn
xopy    ld      a, (hl)
        inc     hl
getbits16:
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
lee16   adc     a, a
      ELSE
lee16   rr     a
      ENDIF
        jr      z, xopy
        rl      c
        djnz    lee16
        ld      b, c
gby:    ld      c, 1
        or      a
        defb    218     ;218=0DAh;JP C,nnnn
.f:
        ld      a, (hl)
        inc     hl
.l:
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
        adc     a, a
      ELSE
        rr      a
      ENDIF
        jr      z,.f
        rl      c
        jr      nc, .l
        ;or      a
        ret

    ENDIF

copy    ld      a, (hl)
        inc     hl
      IF (PFLAG_CODE & PFLAG_BITS_ORDER_BE)
lee8    adc     a, a
      ELSE
lee8    rr     a
      ENDIF
        jr      z, copy
        rl      c
        djnz    lee8
        ret
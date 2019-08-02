;Exomizer 3 Z80 decoder
;Copyright (C) 2008-2018 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi
;
;Compression algorithm by Magnus Lind
;   exomizer raw -P5 -T0 [-b] (speed<3, literals=1, bitsalignstart=0)
;   exomizer raw -P5 -T1 [-b] (speed<3, literals=0, bitsalignstart=0)
;   exomizer raw -P7 -T0 [-b] (speed=3, literals=1, bitsalignstart=0)
;   exomizer raw -P7 -T1 [-b] (speed=3, literals=0, bitsalignstart=0)
;   exomizer raw -P13 -T0 [-b] (speed<3, literals=1, bitsalignstart=1)
;   exomizer raw -P13 -T1 [-b] (speed<3, literals=0, bitsalignstart=1)
;   exomizer raw -P15 -T0 [-b] (speed=3, literals=1, bitsalignstart=1)
;   exomizer raw -P15 -T1 [-b] (speed=3, literals=0, bitsalignstart=1)
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
; SIZE        speed 0   speed 1   speed 2   speed 3   range88-ef
; forw nolit      152       154       171       208       +5
; back nolit      150       152       169       206       +5
; forw liter      167       170       189       219       +5
; back liter      165       168       187       217       +5
;        output  deexoopt.bin
;        define  mapbase  $5b00
;        define  speed    3
;        define  back     0
;        define  literals 0
;        define  bitsalignstart 1
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      iy, 256+mapbase/256*256
      ELSE
        ld      iy, (mapbase+16)/256*256+112
      ENDIF
      IF bitsalignstart=0
        ld      a, (hl)
        inc     hl
      ELSE
        ld      a, 128
      ENDIF
        ld      b, 52
        push    de
        cp      a
exinit  ld      c, 16
        jr      nz, exget4
        ld      de, 1
        ld      ixl, c
      IF  speed=0
exget4  call    exgetb
      ENDIF
      IF  speed=1
exget4  add     a, a
        call    z, exgetb
      ENDIF
      IF  speed=2 OR speed=3
        defb    218
exgb4   ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
exget4  adc     a, a
        jr      z, exgb4
      ENDIF
        rl      c
        jr      nc, exget4
    IF  speed=0 OR speed=1
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-256+mapbase-mapbase/256*256), c
      ELSE
        ld      (iy-112+mapbase-(mapbase+16)/256*256), c
      ENDIF
        push    hl
        ld      hl, 1
        defb    210
    ENDIF
    IF  speed=2
        inc     c
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-256+mapbase-mapbase/256*256), c
      ELSE
        ld      (iy-112+mapbase-(mapbase+16)/256*256), c
      ENDIF
        push    hl
        ld      hl, 1
        defb    48
    ENDIF
    IF  speed=3
        ex      af, af'
        ld      a, c
        rrca
        inc     a
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-256+mapbase-mapbase/256*256), a
      ELSE
        ld      (iy-112+mapbase-(mapbase+16)/256*256), a
      ENDIF
        jr      nc, get5
        xor     136
get5    push    hl
        ld      hl, 1
        defb    56
setbit  add     hl, hl
        dec     a
        jr      nz, setbit
        ex      af, af'
    ELSE
exsetb  add     hl, hl
        dec     c
        jr      nz, exsetb
    ENDIF
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      (iy-204+mapbase-mapbase/256*256), e
        ld      (iy-152+mapbase-mapbase/256*256), d
      ELSE
        ld      (iy-60+mapbase-(mapbase+16)/256*256), e
        ld      (iy-8+mapbase-(mapbase+16)/256*256), d
      ENDIF
        add     hl, de
        ex      de, hl
        inc     iyl
        pop     hl
        dec     ixl
        djnz    exinit
        pop     de
  
    IF  back=1
      IF  literals=1 AND speed=0
exlit   inc     c
exseq   lddr
      ELSE
exlit   ldd
      ENDIF
    ELSE
      IF  literals=1 AND speed=0
exlit   inc     c
exseq   ldir
      ELSE
exlit   ldi
      ENDIF
    ENDIF
    IF  speed=0
exloop  call    exgetb
        jr      c, exlit
        ld      c, 112-1
exgeti  call    exgetb
    ENDIF
    IF  speed=1
exloop  add     a, a
        call    z, exgetb
        jr      c, exlit
        ld      c, 112-1
exgeti  add     a, a
        call    z, exgetb
    ENDIF
    IF  speed=2 OR speed=3
exloop  add     a, a
        jr      z, exgbm
        jr      c, exlit
exgbmc  ld      c, 112-1
exgeti  add     a, a
        jr      z, exgbi
exgbic  inc     c
        jr      nc, exgeti
        ccf
    ELSE
exgbic  inc     c
        jr      nc, exgeti
    ENDIF
      IF  literals=1
        jp      m, excat
      ELSE
        ret     m
      ENDIF
        push    de
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ex      af, af'
        ld      a,256-112
        add     c
        ld      iyl, a
        ex      af, af'
      ELSE
        ld      iyl, c
      ENDIF
    IF  speed=2 OR speed=3
        ld      de, 0
    ENDIF
    IF  speed=3
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, exgbts
        ex      de, hl
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      c, (iy-204+mapbase-mapbase/256*256)
        ld      b, (iy-152+mapbase-mapbase/256*256)
      ELSE
        ld      c, (iy-60+mapbase-(mapbase+16)/256*256)
        ld      b, (iy-8+mapbase-(mapbase+16)/256*256)
      ENDIF
        add     hl, bc
        ex      de, hl
    ELSE
        call    expair
    ENDIF
        push    de
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        inc     d
        dec     d
        jr      nz, dontgo
        ld      bc, 512+48
        dec     e
        jr      z, exgoit
        dec     e
dontgo  ld      bc, 1024+32
        jr      z, exgoit
        ld      c, 16
      ELSE
        inc     d
        dec     d
        jr      nz, dontgo
        ld      bc, 512+160
        dec     e
        jr      z, exgoit
        dec     e
dontgo  ld      bc, 1024+144
        jr      z, exgoit
        ld      c, 128
      ENDIF
    IF  speed=0 OR speed=1
exgoit  call    exgbts
    ENDIF
    IF  speed=2
        ld      e, 0
exgoit  ld      d, e
        call    exgbts
    ENDIF
    IF  speed=3
        ld      e, 0
exgoit  ld      d, e
        call    exlee8
    ENDIF
        ld      iyl, c
        add     iy, de
    IF  speed=2 OR speed=3
        ld      e, d
    ENDIF
    IF  speed=3
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, exgbts
        ex      de, hl
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      c, (iy-204+mapbase-mapbase/256*256)
        ld      b, (iy-152+mapbase-mapbase/256*256)
      ELSE
        ld      c, (iy-60+mapbase-(mapbase+16)/256*256)
        ld      b, (iy-8+mapbase-(mapbase+16)/256*256)
      ENDIF
        add     hl, bc
        ex      de, hl
    ELSE
        call    expair
    ENDIF
        pop     bc
        ex      (sp), hl
      IF  back=1
        ex      de, hl
        add     hl, de
        lddr
      ELSE
        push    hl
        sbc     hl, de
        pop     de
        ldir
      ENDIF
        pop     hl
        jr      exloop

    IF  literals=1
excat:
        ret     pe
    IF  speed=3
        ld      b, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        ld      c, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
    ELSE
        push    de
      IF  speed=2
        ld      d, b
        ld      e, b
      ENDIF
        ld      b, 16
        call    exgbts
        ld      b, d
        ld      c, e
        pop     de
    ENDIF
      IF  speed=0
        jr      exseq
      ELSE
        IF  back=1
        lddr
        ELSE
        ldir
        ENDIF
        jr      exloop
      ENDIF
    ENDIF

    IF  speed=2 OR speed=3
exgbm   ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        adc     a, a
        jr      nc, exgbmc
        jp      exlit
exgbi   ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        adc     a, a
        jp      exgbic
    ENDIF
    IF  speed=3
exgbts  jp      p, exlee8
        sla     b
        jr      z, exgby
        srl     b
        defb    250
exxopy  ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
exl16   adc     a, a
        jr      z, exxopy
        rl      d
        djnz    exl16
exgby   ld      e, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        ret
excopy  ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
exlee8  adc     a, a
        jr      z, excopy
        rl      e
        djnz    exlee8
        ret
    ELSE
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
expair  ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
expair  ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
      IF speed=2
        dec     b
        call    nz, exgbts
      ELSE
        call    exgbts
      ENDIF
        ex      de, hl
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      c, (iy-204+mapbase-mapbase/256*256)
        ld      b, (iy-152+mapbase-mapbase/256*256)
      ELSE
        ld      c, (iy-60+mapbase-(mapbase+16)/256*256)
        ld      b, (iy-8+mapbase-(mapbase+16)/256*256)
      ENDIF
        add     hl, bc
        ex      de, hl
        ret
    ENDIF
    IF  speed=0 OR speed=1
exgbts  ld      de, 0
excont  dec     b
        ret     m
      IF  speed=0
        call    exgetb
      ELSE
        add     a, a
        call    z, exgetb
      ENDIF
        rl      e
        rl      d
        jr      excont
      IF  speed=0
exgetb  add     a, a
        ret     nz
        ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        adc     a, a
        ret
      ELSE
exgetb  ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
        adc     a, a
        ret
      ENDIF
    ENDIF
    IF  speed=2
exgbg   ld      a, (hl)
        IF  back=1
        dec     hl
        ELSE
        inc     hl
        ENDIF
exgbts  adc     a, a
        jr      z, exgbg
        rl      e
        rl      d
        djnz    exgbts
        ret
    ENDIF
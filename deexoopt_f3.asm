;Exomizer 3 Z80 decoder
;Copyright (C) 2008-2018 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi
;
;Compression algorithm by Magnus Lind
;   exomizer raw -P7 -T0 (literals=1, bitsalignstart=0)
;   exomizer raw -P7 -T1 (literals=0, bitsalignstart=0)
;   exomizer raw -P15 -T0 (literals=1, bitsalignstart=1)
;   exomizer raw -P15 -T1 (literals=0, bitsalignstart=1)
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
        ;push    de

      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      iy, 256+mapbase/256*256
      ELSE
        ld      iy, (mapbase+16)/256*256+112
      ENDIF

        cp      a	;set ZF
        ex      af, af';'

        ld      bc, 52 * 256 + 16

      IF bitsalignstart=0
        or      a       ;reset CF
      ELSE
        ;scf             ;set CF
        or      a       ;reset CF
        ld      a, 128
        defb    218     ;218=0DAh;JP C,nnnn
      ENDIF

gb4     ld      a, (hl)
        inc     hl
get4    adc     a, a
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
        sub     128 - 8
        defb    56      ;56=38h;JR C.nn
setbit  add     hl, hl
get5:   dec     a
        jr      nz, setbit

        add     hl, de
        ex      de, hl

        inc     iyl
        dec     c
        ex      af,af';'
        exx

        ld      c,16
        or      a       ;reset CF
        djnz    get4

        ;pop     de
        ;ret

litcop  ldi
mloop   add     a, a
        jr      z, gbm
        jr      c, litcop
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
gbmc    ld      c, 256-1
      ELSE
gbmc    ld      c, 112-1
      ENDIF
getind  add     a, a
        jr      z, gbi
gbic    inc     c
        jr      nc, getind
        ccf
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
        push    de
        ld      iyl, c
        ld      de, 0
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, getbits
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
        push    de
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        inc     d
        dec     d
        jr      nz, dontgo
        ld      bc, 512+48
        dec     e
        jr      z, goit
        dec     e
dontgo  ld      bc, 1024+32
        jr      z, goit
        ld      c, 16
      ELSE
        inc     d
        dec     d
        jr      nz, dontgo
        ld      bc, 512+160
        dec     e
        jr      z, goit
        dec     e
dontgo  ld      bc, 1024+144
        jr      z, goit
        ld      c, 128
      ENDIF
        ld      e, 0
goit    ld      d, e
        call    lee8
        ld      iyl, c
        add     iy, de
        ld      e, d
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        ld      b, (iy-256+mapbase-mapbase/256*256)
      ELSE
        ld      b, (iy-112+mapbase-(mapbase+16)/256*256)
      ENDIF
        dec     b
        call    nz, getbits
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
        pop     bc
        ex      (sp), hl
        push    hl
        sbc     hl, de
        pop     de
        ldir
        pop     hl
        jr      mloop

    IF  literals=1
litcat  
      IF  mapbase-mapbase/256*256<240 AND mapbase-mapbase/256*256>135
        rl      c
      ENDIF
        ret     pe
        ld      b, (hl)
        inc     hl
        ld      c, (hl)
        inc     hl
        ldir
        jr      mloop
    ENDIF

gbm     ld      a, (hl)
        inc     hl
        adc     a, a
        jr      nc, gbmc
        jp      litcop

gbi     ld      a, (hl)
        inc     hl
        adc     a, a
        jp      gbic

getbits jp      p, lee8
        rl      b
        jr      z, gby
        srl     b
        defb    250     ;250=0FAh;JP M,nnnn
xopy    ld      a, (hl)
        inc     hl
lee16   adc     a, a
        jr      z, xopy
        rl      d
        djnz    lee16
gby     ld      e, (hl)
        inc     hl
        ret

copy    ld      a, (hl)
        inc     hl
lee8    adc     a, a
        jr      z, copy
        rl      e
        djnz    lee8
        ret
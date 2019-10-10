; aPPack decompressor
; original source by dwedit
; very slightly adapted by utopian
; optimized by Metalbrain & Antonio Villena
;247b to 241b optimized by uniabis

    ;hl = source
    ;de = dest

depack              ;di
                    ;push iy
                    ;call init
                    ;pop iy
                    ;ei
                    ;ret

init                ld      a,128
                    jr      apbranch1

apgetbit1:          ld      a,(hl)
                    inc     hl
                    rla
                    jr      c,apbranch1n
apbranch1           ldi
aploop2             ld      b,255
aploop              add     a,a
                    jr      z,apgetbit1
                    jr      nc,apbranch1
apbranch1n:         add     a,a
                    jr      nz,apnogetbit2
                    ld      a,(hl)
                    inc     hl
                    rla
apnogetbit2         jr      nc,apbranch2
                    add     a,a
                    jr      nz,apnogetbit3
                    ld      a,(hl)
                    inc     hl
                    rla
apnogetbit3         jr      nc,apbranch3
                    ld      bc,16      ;get an offset
apget4bits          add     a,a
                    jr      nz,apnogetbit4
                    ld      a,(hl)
                    inc     hl
                    rla
apnogetbit4         rl      c
                    jr      nc,apget4bits
                    jr      nz,apbranch4
                    ex      de,hl
                    ld      (hl),b      ;write a 0
                    ex      de,hl
                    inc     de
                    jp      aploop2

apbranch4           ex      af,af'
                    or      a
                    ex      de,hl       ;write a previous byte (1-15 away from dest)
                    sbc     hl,bc
                    ld      a,(hl)
                    add     hl,bc
                    ld      (hl),a
                    ex      af,af'
                    ex      de,hl
                    inc     de
                    jp      aploop2

apbranch3           ld      c,(hl)      ;use 7 bit offset, length = 2 or 3
                    ex      af,af'
                    srl     c
                    ret     z      ;if a zero is found here, it's EOF
                    inc     hl
                    ld      a,2
                    ld      b,0
                    adc     a,b
                    push    hl
                    push    bc
                    pop     iy
                    ;ld      iyh,b
                    ;ld      iyl,c
                    ld      h,d
                    ld      l,e
                    sbc     hl,bc
                    ld      c,a
                    ex      af,af'
                    ldir
                    pop     hl
                    jp      aploop
apbranch2           ex      af,af'
                    ld      a,b
                    call    ap_getgamma   ;use a gamma code * 256 for offset, another gamma code for length
                    dec     c
                    ex      af,af'
                    add     a,c

                    jr      z,ap_r0_gamma
                    dec     a

                    ;do I even need this code?
                    ;bc=bc*256+(hl), lazy 16bit way
                    ld      b,a
                    ld      c,(hl)
                    inc     hl
                    push    bc
                    pop     iy
                    ;ld      iyh,b
                    ;ld      iyl,c

                    push    bc

                    call    ap_getgamma

                    ex      (sp),hl      ;bc = len, hl=offs
                    push    de
                    ex      de,hl

                    ex      af,af'
                    ld      a,4
                    cp      d
                    jr      nc,apskip2
                    inc     bc
                    or      a
apskip2             ld      hl,127
                    sbc     hl,de
                    jr      c,apskip3
                    inc     bc
                    inc     bc
apskip3             pop     hl      ;bc = len, de = offs, hl=junk
                    push    hl
                    ex      af,af'
                    sbc     hl,de
                    pop     de      ;hl=dest-offs, bc=len, de = dest
                    ldir
                    pop     hl
                    jp      aploop

ap_r0_gamma         call    ap_getgamma    ;and a new gamma code for length
                    push    hl
                    push    de
                    ex      de,hl

                    push    iy
                    pop     de
                    ;ld      d,iyh
                    ;ld      e,iyl
                    sbc     hl,de
                    pop     de      ;hl=dest-offs, bc=len, de = dest
                    ldir
                    pop     hl
                    jp      aploop

ap5                 ld      a,(hl)
                    inc     hl
                    rla
                    jp      apnogetbit5
ap6                 ld      a, (hl)
                    inc     hl
                    rla
                    jp      apnogetbit6
ap7                 ld      a, (hl)
                    inc     hl
                    rla
                    jp      apnogetbit7
ap8                 ld      a, (hl)
                    inc     hl
                    rla
                    jp      apnogetbit8
ap9                 ld      a, (hl)
                    inc     hl
                    rla
                    jp      apnogetbit9


ap10                ld      a, (hl)
                    inc     hl
                    rla
                    ret     nc
                    jp      ap_getgammaloop


ap_getgamma         ex      af, af'
                    ld      bc, 1
                    add     a, a
                    jr      z, ap5
apnogetbit5         rl      c
                    add     a, a
                    jr      z, ap6
apnogetbit6         ret     nc
                    add     a, a
                    jr      z, ap7
apnogetbit7         rl      c
                    add     a, a
                    jr      z, ap8
apnogetbit8         ret     nc
ap_getgammaloop     add     a, a
                    jr      z, ap9
apnogetbit9         rl      c
                    rl      b
                    add     a, a
                    jr      z, ap10
apnogetbit10        ret     nc
                    jp      ap_getgammaloop

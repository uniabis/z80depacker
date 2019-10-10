; aPPack decompressor
; original source by dwedit
; very slightly adapted by utopian
; optimized by Metalbrain & Antonio Villena
;247b to 181b

    ;hl = source
    ;de = dest

depack              ;di
                    ;push iy
                    ;call init
                    ;pop iy
                    ;ei
                    ;ret

init                ld      a,128
apbranch1           ldi
aploop2             ld      b,255
aploop              add     a,a
                    call    z,apfilbuf
                    jr      nc,apbranch1
                    add     a,a
                    call    z,apfilbuf
                    jr      nc,apbranch2
                    add     a,a
                    call    z,apfilbuf
                    jr      nc,apbranch3
                    ld      bc,16      ;get an offset
apget4bits          add     a,a
                    call    z,apfilbuf
                    rl      c
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
                    inc     hl
                    ex      af,af'
                    srl     c
                    ret     z      ;if a zero is found here, it's EOF
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
apbranch2           ex      af,af
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
                    or      a
                    sbc     hl,de
                    ex      af,af'
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

ap_getgamma         ex      af,af'
                    ld      bc,1
ap_getgammaloop     add     a,a
                    call    z,apfilbuf
                    rl      c
                    rl      b
                    add     a,a
                    call    z,apfilbuf
                    ret     nc
                    jp      ap_getgammaloop

apfilbuf            ld      a,(hl)
                    inc     hl
                    rla
                    ret


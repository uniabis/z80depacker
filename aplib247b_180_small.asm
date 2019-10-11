; aPPack decompressor
; original source by dwedit
; very slightly adapted by utopian
; optimized by Metalbrain & Antonio Villena
;247b to 174b optimized by uniabis

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
                    ld      c,16       ;get an offset
apget4bits          add     a,a
                    call    z,apfilbuf
                    rl      c
                    jr      nc,apget4bits
                    jr      nz,apbranch4
                    ex      de,hl
                    ld      (hl),c      ;write a 0
                    ex      de,hl
                    inc     de
                    jp      aploop2

apbranch4           ex      af,af'

                    ld      a,e
                    sub     c
                    ld      c,a
                    sbc     a,a
                    add     d
                    ld      b,a
                    ld      a,(bc)
                    ld      (de),a

                    ex      af,af'

                    inc     de
                    jp      aploop2

apbranch3           ex      af,af'

                    ld      a,(hl)      ;use 7 bit offset, length = 2 or 3
                    srl     a
                    ret     z      ;if a zero is found here, it's EOF
                    inc     hl
                    push    hl

                    ld      bc,1
                    rl      c

                    ld      h,255
                    cpl
                    ld      l,a
                    inc     hl

                    push    hl
                    pop     iy

                    ex      af,af'

                    add     hl,de
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

                    cpl
                    ld      b,a
                    ld      a,(hl)
                    inc     hl
                    cpl
                    ld      c,a

                    push    bc

                    inc     bc
                    push    bc
                    pop     iy

                    call    ap_getgamma

                    ex      (sp),hl      ;bc = len, hl=offs

                    ex      af,af'
                    ld      a,h
                    cp      255-4
                    jr      nc,apskip2
                    inc     bc
apskip2             inc     a
                    jr      nz,apskip3
                    ld      a,l
                    rla
                    jr      nc,apskip3
                    inc     bc
                    inc     bc
apskip3             ex      af,af'
                    inc     hl

                    add     hl,de
                    ldir
                    pop     hl
                    jp      aploop

ap_r0_gamma         call    ap_getgamma    ;and a new gamma code for length

                    push    hl

                    push    iy
                    pop     hl

                    add     hl,de
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


; aPPack decompressor
; original source by dwedit
; very slightly adapted by utopian
; optimized by Metalbrain & Antonio Villena
;247b to 171b optimized by uniabis

    ;hl = source
    ;de = dest

depack              ;di
                    ;call init
                    ;ei
                    ;ret

init                ld      a,128

                    ;;cap v1.2 with load address version requires to copy two bytes on top
                    ;ldi
                    ;ldi

                    jr      apbranch1

apfilbuf1           ld      a,(hl)
                    inc     hl
                    rla
                    jr      c,apbranch1n
apbranch1           ldi
aploop2             ld      b,255
aploop              add     a,a
                    jr      nc,apbranch1
                    jr      z,apfilbuf1
apbranch1n          add     a,a
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
                    jr      aploop2

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
                    jr      aploop2

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

                    push    hl
                    pop     ix

apskip3             ex      af,af'
apskip4             inc     hl

                    add     hl,de
                    ldir
                    pop     hl
                    jr      aploop

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

                    push    bc
                    pop     ix

                    call    ap_getgamma

                    ex      (sp),hl      ;bc = len, hl=offs

                    ex      af,af'
                    ld      a,h
                    cp      255-4
                    jr      nc,apskip2
                    inc     bc
apskip2             inc     a
                    jr      nz,apskip3
                    or      l
                    jp      p,apskip3
                    inc     bc
                    inc     bc
                    jr      apskip3

ap_r0_gamma         call    ap_getgamma    ;and a new gamma code for length

                    push    ix
                    ex      (sp),hl

                    jr      apskip4

ap_getgamma         ex      af,af'
                    ld      bc,1
ap_getgammaloop     add     a,a
                    jr      z,ap_getgammafb1
ap_getgammafb1r     rl      c
                    rl      b
                    add     a,a
                    jr      z,ap_getgammafb2
                    ret     nc
                    jr      ap_getgammaloop

ap_getgammafb1      ld      a,(hl)
                    inc     hl
                    rla
                    jr      ap_getgammafb1r

ap_getgammafb2      ld      a,(hl)
                    inc     hl
                    rla
                    ret     nc
                    jr      ap_getgammaloop

apfilbuf            ld      a,(hl)
                    inc     hl
                    rla
                    ret


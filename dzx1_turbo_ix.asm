; -----------------------------------------------------------------------------
; ZX1 decoder by Einar Saukas & introspec
; "Turbo IX" version (126 bytes, 20% faster)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

        ; -1bytes, bit slower, support for hd64180/z180
        ;DEFINE HD64180

dzx1_turbo:
        ld      bc, 1
        ld      ix, $ffff               ; preserve default offset 1
        ld      a, $80
        jr      dzx1t_literals
dzx1t_new_offset:
        dec     b
        ld      c, (hl)                 ; obtain offset LSB
        inc     hl
        rr      c                       ; single byte offset?
        jr      nc, dzx1t_msb_skip
        ld      b, (hl)                 ; obtain offset MSB
        inc     hl
        rr      b                       ; replace last LSB bit with last MSB bit
        inc     b
        ret     z                       ; check end marker
        rl      c
dzx1t_msb_skip:
        IFDEF HD64180
        push    bc
        pop     ix                      ; preserve new offset
        ELSE
        ld      ixh, b
        ld      ixl, c
        ENDIF
        ld      bc, 1                   ; obtain length
        add     a, a
        call    c, dzx1t_elias
        inc     bc
dzx1t_copy:
        push    ix                      ; preserve offset
        ex      (sp), hl                ; preserve source, restore offset
        add     hl, de                  ; calculate destination - offset
        ldir                            ; copy from offset
        pop     hl                      ; restore source
        add     a, a                    ; copy from literals or new offset?
        jr      c, dzx1t_new_offset
        inc     c                       ; obtain length
dzx1t_literals:
        add     a, a
        call    c, dzx1t_elias
        ldir                            ; copy literals
        add     a, a                    ; copy from last offset or new offset?
        jr      c, dzx1t_new_offset
        inc     c                       ; obtain length
        add     a, a
        call    c, dzx1t_elias
        jp      dzx1t_copy
dzx1t_elias_loop:
        add     a, a
        rl      c
        add     a, a
        ret     nc
dzx1t_elias:
        jp      nz, dzx1t_elias_loop    ; inverted interlaced Elias gamma coding
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
        ret     nc
        add     a, a
        rl      c
        add     a, a
        ret     nc
        add     a, a
        rl      c
        add     a, a
        ret     nc
        add     a, a
        rl      c
        add     a, a
        ret     nc
dzx1t_elias_reload:
        add     a, a
        rl      c
        rl      b
        add     a, a
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
        ret     nc
        add     a, a
        rl      c
        rl      b
        add     a, a
        ret     nc
        add     a, a
        rl      c
        rl      b
        add     a, a
        ret     nc
        add     a, a
        rl      c
        rl      b
        add     a, a
        jr      c, dzx1t_elias_reload
        ret
; -----------------------------------------------------------------------------

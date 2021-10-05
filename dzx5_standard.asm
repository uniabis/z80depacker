; -----------------------------------------------------------------------------
; ZX5 decoder by Einar Saukas
; "Standard" version (88 bytes only)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

dzx5_standard:
        ld      bc, $ffff               ; preserve default offset 1
        push    bc
        inc     bc
        ld      a, $80
dzx5s_literals:
        call    dzx5s_elias             ; obtain length
        ldir                            ; copy literals
        add     a, a                    ; copy from last offset or another offset?
        jr      c, dzx5s_other_offset
dzx5s_last_offset:
        call    dzx5s_elias             ; obtain length
dzx5s_copy:
        ex      (sp), hl                ; preserve source, restore offset
        push    hl                      ; preserve offset
        add     hl, de                  ; calculate destination - offset
        ldir                            ; copy from offset
        pop     hl                      ; restore offset
        ex      (sp), hl                ; preserve offset, restore source
        add     a, a                    ; copy from literals or another offset?
        jr      nc, dzx5s_literals
dzx5s_other_offset:
        add     a, a                    ; copy from previous offset or new offset?
        jr      nz, dzx5s_other_offset_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5s_other_offset_skip:
        exx
        jr      nc, dzx5s_prev_offset
dzx5s_new_offset:
        ex      de, hl                  ; copy 2nd last offset to 3rd last offset
        pop     hl                      ; copy last offset to 2nd last offset
        ld      b, a                    ; preserve next bit
        add     a, a
        exx
        ld      c, $fe                  ; prepare negative offset
        call    dzx5s_elias_loop        ; obtain offset MSB
        inc     c
        ret     z                       ; check end marker
        ld      b, c
        ld      c, (hl)                 ; obtain offset LSB
        inc     hl
        push    bc                      ; preserve new offset
        ld      bc, 1                   ; obtain length
        exx
        dec     b                       ; restore preserved bit
        exx
        call    p, dzx5s_elias_backtrack
        inc     bc
        jr      dzx5s_copy
dzx5s_prev_offset:
        add     a, a                    ; copy from 2nd offset or 3rd offset?
        jr      nc, dzx5s_second_offset
        ex      de, hl
dzx5s_second_offset:
        ex      (sp), hl
        exx
        jr      dzx5s_last_offset
dzx5s_elias:
        inc     c                       ; interlaced Elias gamma coding
dzx5s_elias_loop:
        add     a, a
        jr      nz, dzx5s_elias_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5s_elias_skip:
        ret     c
dzx5s_elias_backtrack:
        add     a, a
        rl      c
        rl      b
        jr      dzx5s_elias_loop
; -----------------------------------------------------------------------------

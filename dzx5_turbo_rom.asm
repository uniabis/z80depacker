; -----------------------------------------------------------------------------
; ZX5 decoder by Einar Saukas
; "Turbo ROM" version (141 bytes, 13% faster)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

dzx5_turbo:
        ld      bc, $ffff               ; preserve default offset 1
        push    bc
        inc     bc
        ld      a, $80
        jr      dzx5t_literals
dzx5t_other_offset:
        add     a, a                    ; copy from previous offset or new offset?
        jr      nz, dzx5t_other_offset_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5t_other_offset_skip:
        exx
        jr      nc, dzx5t_prev_offset
dzx5t_new_offset:
        ex      de, hl                  ; copy 2nd last offset to 3rd last offset
        pop     hl                      ; copy last offset to 2nd last offset
        ld      b, a                    ; preserve next bit
        add     a, a
        exx
        ld      c, $fe                  ; prepare negative offset
        add     a, a
        jp      nz, dzx5t_new_offset_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5t_new_offset_skip:
        call    nc, dzx5t_elias         ; obtain offset MSB
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
        call    p, dzx5t_elias
        inc     bc
dzx5t_copy:
        ex      (sp),hl                 ; preserve source and restore offset
        push    hl                      ; preserve offset
        add     hl, de                  ; calculate destination - offset
        ldir                            ; copy from offset
        pop     hl                      ; restore offset
        ex      (sp),hl                 ; restore source and preserve offset
        add     a, a                    ; copy from literals or another offset?
        jr      c, dzx5t_other_offset
dzx5t_literals:
        inc     c                       ; obtain length
        add     a, a
        jp      nz, dzx5t_literals_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5t_literals_skip:
        call    nc, dzx5t_elias
        ldir                            ; copy literals
        add     a, a                    ; copy from last offset or another offset?
        jr      c, dzx5t_other_offset
dzx5t_reuse_offset:
        inc     c                       ; obtain length
        add     a, a
        jp      nz, dzx5t_last_offset_skip
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx5t_last_offset_skip:
        call    nc, dzx5t_elias
        jp      dzx5t_copy
dzx5t_prev_offset:
        add     a, a                    ; copy from 2nd offset or 3rd offset?
        jr      nc, dzx5t_second_offset
        ex      de, hl
dzx5t_second_offset:
        ex      (sp),hl
        exx
        jp      dzx5t_reuse_offset
dzx5t_elias:
        add     a, a                    ; interlaced Elias gamma coding
        rl      c
        add     a, a
        jr      nc, dzx5t_elias
        ret     nz
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
        ret     c
        add     a, a
        rl      c
        add     a, a
        ret     c
        add     a, a
        rl      c
        add     a, a
        ret     c
        add     a, a
        rl      c
        add     a, a
        ret     c
dzx5t_elias_loop:
        add     a, a
        rl      c
        rl      b
        add     a, a
        jr      nc, dzx5t_elias_loop
        ret     nz
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
        jr      nc, dzx5t_elias_loop
        ret
; -----------------------------------------------------------------------------

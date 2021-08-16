; -----------------------------------------------------------------------------
; ZX1 decoder by Einar Saukas
; "Standard IX" version (69 bytes only)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------

        ; -1bytes, bit slower, support for hd64180/z180
        ;DEFINE HD64180

dzx1_standard:
        ld      ix, $ffff               ; preserve default offset 1
        ld      a, $80
dzx1s_literals:
        call    dzx1s_elias             ; obtain length
        ldir                            ; copy literals
        add     a, a                    ; copy from last offset or new offset?
        jr      c, dzx1s_new_offset
        call    dzx1s_elias             ; obtain length
dzx1s_copy:
        push    ix                      ; preserve offset
        ex      (sp), hl                ; preserve source, restore offset
        add     hl, de                  ; calculate destination - offset
        ldir                            ; copy from offset
        pop     hl                      ; restore source
        add     a, a                    ; copy from literals or new offset?
        jr      nc, dzx1s_literals
dzx1s_new_offset:
        dec     b
        ld      c, (hl)                 ; obtain offset LSB
        inc     hl
        rr      c                       ; single byte offset?
        jr      nc, dzx1s_msb_skip
        ld      b, (hl)                 ; obtain offset MSB
        inc     hl
        rr      b                       ; replace last LSB bit with last MSB bit
        inc     b
        ret     z                       ; check end marker
        rl      c
dzx1s_msb_skip:
        IFDEF HD64180
        push    bc                      ; preserve new offset
        pop     ix                      ; restore offset
        ELSE
        ld      ixh, b
        ld      ixl, c
        ENDIF
        call    dzx1s_elias             ; obtain length
        inc     bc
        jr      dzx1s_copy
dzx1s_elias:
        ld      bc, 1                   ; interlaced Elias gamma coding
dzx1s_elias_loop:        
        add     a, a
        jr      nz, dzx1s_elias_skip    
        ld      a, (hl)                 ; load another group of 8 bits
        inc     hl
        rla
dzx1s_elias_skip:        
        ret     nc
        add     a, a
        rl      c
        rl      b
        jr      dzx1s_elias_loop
; -----------------------------------------------------------------------------

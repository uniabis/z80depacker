; -----------------------------------------------------------------------------
; ZX7 Backwards by Einar Saukas, Antonio Villena
; "Standard" version (156/177/191 bytes only)
; -----------------------------------------------------------------------------
; Parameters:
;   HL: source address (compressed data)
;   DE: destination address (decompressing)
; -----------------------------------------------------------------------------
    define speed 2

    macro getbitm
      if speed=0
        add     a, a            ; check next bit
        call    z, getbit       ; no more bits left?
      else
        add     a,  a           ; check next bit
        jp      nz, .gb1        ; no more bits left?
        ld      a, (hl)         ; load another group of 8 bits
        dec     hl
        adc     a, a
.gb1
      endif
    endm

dzx7:   ld      a, $80          ; set marker bit as MSB
      if speed>1
        ldd                     ; copy literal byte
        add     a, a            ; read next bit, faster method
        jr      z, mailab       ; call routine only if need to load next byte
        jr      c, maicoo       ; next bit indicates either literal or sequence
        ldd                     ; loop unrolling x4
        add     a, a
        jr      c, maicoe
      endif
copbye: ldd                     ; copy literal byte
        add     a, a            ; read next bit, faster method
        jr      z, mailab       ; call routine only if need to load next byte
        jr      c, maicoo       ; next bit indicates either literal or sequence
copbyo: ldd                     ; loop unrolling x2
        add     a, a
        jr      nc, copbye      ; next bit indicates either literal or sequence

; determine number of bits used for length (Elias gamma coding)
maicoe: ld      bc, 2           ; BC=$0002
maisie: push    de              ; store destination on stack
        ld      d, b            ; D= 0
        getbitm                 ; getbit with macro getbitm
      if speed=0
        jr      c, contie
      else
        jp      c, contie       ; jp is 2 cycles faster when jump not taken
      endif
        dec     c               
levale: add     a, a
        rl      c
        rl      b               ; insert bit on BC
        getbitm                 ; more bits?
        jr      nc, levale      ; repeat, final length on BC

; check escape sequence
        inc     c               ; detect escape sequence
        jr      z, exitdz       ; end of algorithm

; determine offset
contie: ld      e, (hl)         ; load offset flag (1 bit) + offset value (7 bits)
        dec     hl
        sll     e
        jr      nc, offnde      ; if offset flag is set, load 4 extra bits
        add     a, a            ; load 4 bits by code
        rl      d               ; odd bits don't need end of byte checking
        getbitm
        rl      d
        add     a, a
        rl      d
        getbitm
        ccf
        jr      c, offnde
        inc     d               ; equivalent to adding 128 to DE
offnde: rr      e               ; insert inverted fourth bit into E
        ex      (sp), hl        ; store source, restore destination
        ex      de, hl          ; destination from HL to DE
        adc     hl, de          ; HL = destination + offset + 1
        lddr
        pop     hl              ; restore source address (compressed data)
        add     a, a
    if speed=0
        jr      c, maicoe
        jr      copbye
    else
      if speed=1
        jr      c, maicoe
        jp      copbye
      else
        jr      nc, copbye
        ld      c, 2
        jp      maisie
      endif
    endif

exitdz: pop     hl              ; exit path
      if speed=0
getbit: ld      a, (hl)         ; load another group of 8 bits
        dec     hl
        adc     a, a
      endif
        ret

mailab: ld      a, (hl)         ; save some cycles avoiding call getbit
        dec     hl
        adc     a, a
        jr      nc, copbyo

maicoo: ld      bc, 2           ; repeats code above (maicoe), for odd bits
        push    de
        ld      d, b
        add     a, a
      if speed=0
        jr      c, contio
      else
        jp      c, contio
      endif
        dec     c
levalo: getbitm
        rl      c
        rl      b
        add     a, a
        jr      nc, levalo
        inc     c
        jr      z, exitdz
contio: ld      e, (hl)
        dec     hl
        sll     e
        jr      nc, offndo
        getbitm
        rl      d
        add     a, a
        rl      d
        getbitm
        rl      d
        add     a, a
        ccf
        jr      c, offndo
        inc     d
offndo: rr      e
        ex      (sp), hl
        ex      de, hl
        adc     hl, de
        lddr
        pop     hl
        add     a,  a
        jr      z, mailab
        jr      c, maicoo
        jp      copbyo

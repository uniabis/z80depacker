; -----------------------------------------------------------------------------
; ZX7 Backwards by Einar Saukas, Antonio Villena
; "Standard" version (156/177/184 bytes only) for R800
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

    macro getbiteom odd
      if (odd)=1
        add     a,a
      else
        getbitm
      endif
    endm

    macro maicoeom odd
      if odd=1
mailab: ld      a, (hl)         ; save some cycles avoiding call getbit
        dec     hl
        adc     a, a
        jr      nc, copbyo

maicoo:
      else
maicoe:
      endif

; determine number of bits used for length (Elias gamma coding)
.maico: ld      bc, 2           ; BC=$0002
.maisi: push    de              ; store destination on stack
        ld      d, b            ; D= 0
        getbiteom odd^0         ; getbit with macro getbitm
      if speed=0
        jr      c, .conti
      else
        jp      c, .conti       ; jp is 2 cycles faster when jump not taken
      endif
        dec     c
.leval: getbiteom odd^1
        rl      c
        rl      b               ; insert bit on BC
        getbiteom odd^0
        jr      nc, .leval      ; repeat, final length on BC

; check escape sequence
        inc     c               ; detect escape sequence
        jr      z, exitdz       ; end of algorithm

; determine offset
.conti: ld      e, (hl)         ; load offset flag (1 bit) + offset value (7 bits)
        dec     hl
        rl      e
        jr      nc, .offnd      ; if offset flag is set, load 4 extra bits
        getbiteom odd^1         ; load 4 bits by code
        rl      d               ; odd bits don't need end of byte checking
        getbiteom odd^0
        rl      d
        getbiteom odd^1
        rl      d
        getbiteom odd^0
        ccf
        jr      c, .offnd
        inc     d               ; equivalent to adding 128 to DE
.offnd: rr      e               ; insert inverted fourth bit into E
        ex      (sp), hl        ; store source, restore destination
        ex      de, hl          ; destination from HL to DE
        adc     hl, de          ; HL = destination + offset + 1
      if speed>1
        ldd
      endif
        lddr
        pop     hl              ; restore source address (compressed data)
        getbiteom 1
  if odd=1
        jr      z, mailab
        jr      c, maicoo
        jp      copbyo
  else
    if speed=0
        jr      c, .maico
        jr      copbye
    else
      if speed=1
        jr      c, .maico
        jp      copbye
      else
        jr      nc, copbye
        ld      c, 2
        jp      .maisi
      endif
    endif

  endif

    endm

dzx7:
      if speed>1
        ldd                     ; copy literal byte
        scf

        maicoeom 1

exitdz: pop     hl              ; exit path
        ret
      else
        ld      a, $80          ; set marker bit as MSB
      endif

copbye: ldd                     ; copy literal byte
        add     a, a            ; read next bit, faster method
        jr      z, mailab       ; call routine only if need to load next byte
        jr      c, maicoo       ; next bit indicates either literal or sequence
copbyo: ldd                     ; loop unrolling x2
        add     a, a
        jr      nc, copbye      ; next bit indicates either literal or sequence

        maicoeom 0

      if speed>1
      else
exitdz: pop     hl              ; exit path
      if speed=0
getbit: ld      a, (hl)         ; load another group of 8 bits
        dec     hl
        adc     a, a
      endif
        ret

        maicoeom 1
      endif

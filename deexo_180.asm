;Exomizer 2 Z80 decoder
;Copyright (C) 2008-2016 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi (169 bytes)
;Use z80 alternate registers to prevent undocumented instruction(169 -> 167bytes)
;Apply speed boost(167 -> 172bytes)
;Replace JR with JP(172 -> 178bytes)
;
;Compression algorithm by Magnus Lind
;
;   This depacker is free software; you can redistribute it and/or
;   modify it under the terms of the GNU Lesser General Public
;   License as published by the Free Software Foundation; either
;   version 2.1 of the License, or (at your option) any later version.
;
;   This library is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;   Lesser General Public License for more details.
;
;   You should have received a copy of the GNU Lesser General Public
;   License along with this library; if not, write to the Free Software
;   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
;
;
;input:         hl=compressed data start
;               de=uncompressed destination start
;
;               you may change exo_mapbasebits to point to any free buffer
;
;ATTENTION!
;A huge speed boost (around 14%) can be gained at the cost of only 5 bytes.
;If you want this, replace all instances of "call exo_getbit" with "srl a" followed by
;"call z,exo_getbit", and remove the first two instructions in exo_getbit routine.

              IFNDEF OPTIMIZE_JUMP
                DEFINE JPX jr
              ELSE
                DEFINE JPX jp
              ENDIF

deexo:          ld      iy, exo_mapbasebits+11

                ld      a, (hl)
                inc     hl

tableinit:
                ld      b, 52
                cp      a ; SET ZF

exo_initbits:
                exx

                ld      hl, 1
                ld      b, 16
                jr      nz, exo_get4bits
                ld      c, b
                ld      d, h
                ld      e, l

exo_get4bits:   exx
              IFNDEF INLINE_GETBIT
                call    exo_getbit
              ELSE
                srl     a
                call    z,exo_getbit
              ENDIF
                exx

                rl      b
                jr      nc, exo_get4bits
                inc     b
                ld      (iy+41), b      ;bits[i]=b1 (and opcode 41 == add hl,hl)
exo_setbit:     djnz    exo_setbit-1 ;jump to add hl,hl instruction
                ld      (iy-11), e
                ld      (iy+93), d      ;base[i]=b2
                add     hl, de
                ex      de, hl
                inc     iy
                dec     c

                exx
                djnz    exo_initbits

                ld      c,b             ;C=B=0

              IFNDEF OPTIMIZE_JUMP
                jr      exo_mainloop
              ELSE
                ld      ix,exo_mainloop
                jp      (ix)
              ENDIF




exo_literalrun: ld      e, c            ;DE=1
exo_getbits:    dec     b
                ret     z
exo_getbits1:
              IFNDEF INLINE_GETBIT
                call    exo_getbit
              ELSE
                srl     a
                call    z,exo_getbit
              ENDIF
                rl      e
                rl      d
                JPX     nc, exo_getbits

                ld      b, d
                ld      c, e
                pop     de

exo_literalcopy:
                ldir

exo_mainloop:   inc     c
              IFNDEF INLINE_GETBIT
                call    exo_getbit
              ELSE
                srl     a
                call    z,exo_getbit
              ENDIF
                jr      c, exo_literalcopy
                ld      c, 239
exo_getindex:
              IFNDEF INLINE_GETBIT
                call    exo_getbit
              ELSE
                srl     a
                call    z,exo_getbit
              ENDIF
                inc     c
                jr      nc,exo_getindex
                ret     z
                push    de
                ld      d, b
                jp      p, exo_literalrun
                ld      iy, exo_mapbasebits-229
                call    exo_getpair
                push    de
                rlc     d
                jr      nz, exo_dontgo
                dec     e
                ld      bc, 512+32      ;2 bits, 48 offset
                jr      z, exo_goforit
                dec     e               ;2?
exo_dontgo:     ld      bc, 1024+16     ;4 bits, 32 offset
                jr      z, exo_goforit
                ld      de, 0
                ld      c, d            ;16 offset
exo_goforit:    call    exo_getbits1
                ld      iy, exo_mapbasebits+27
                add     iy, de
                call    exo_getpair
                pop     bc
                ex      (sp), hl
                push    hl
                sbc     hl, de
                pop     de
                ldir
                pop     hl
              IFNDEF OPTIMIZE_JUMP
                jr      exo_mainloop
              ELSE
                jp      (ix)     ;Next!
              ENDIF



exo_getpair:    add     iy, bc
                ld      e, d
                ld      b, (iy+41)
                call    exo_getbits
                ex      de, hl
                ld      c, (iy-11)
                ld      b, (iy+93)
                add     hl, bc          ;Always clear C flag
                ex      de, hl
                ret


exo_getbit:
              IFNDEF INLINE_GETBIT
                srl     a
                ret     nz
              ENDIF

                ld      a, (hl)
                inc     hl

                rra
                ret


exo_mapbasebits:
                ;defs    156             ;tables for bits, baseL, baseH



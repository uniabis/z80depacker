;Exomizer 3 raw -P7(default) Z80 decoder
;Copyright (C) 2008-2016 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi (169 bytes)
;Modified using z80 alternate registers to prevent undocumented instruction(169 -> 167bytes) by uniabis
;Modified for Exomizer 3 raw -P7(default) (167 -> 176bytes) by uniabis
;Apply speed boost(176 -> 179bytes)
;Replace JR with JP(179-> 181ytes)
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
;A huge speed boost (around 14%) can be gained at the cost of only 3 bytes.
;If you want this, replace all instances of "call exo_getbit" with "add a" followed by
;"call z,exo_getbit", and remove the first two instructions in exo_getbit routine.

              IFNDEF OPTIMIZE_JUMP
                DEFINE JPX jr
              ELSE
                DEFINE JPX jp
              ENDIF

                MACRO   m_getbit
              IFNDEF INLINE_GETBIT
                call    p_getbit
              ELSE
                add     a
                call    z,p_getbit
              ENDIF
                ENDM


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
                m_getbit
                exx

                rl      b
                jr      nc, exo_get4bits

                ld      (iy-11), b      ;bits[i]

                srl     b
                jr      nc,.skp1

                set     3,b
.skp1:

                inc     b
                ld      (iy+93), d      ;baseh[i]
                ld      (iy+41), e      ;basel[i] (and opcode 41 == add hl,hl)
exo_setbit:
                djnz    exo_setbit-1 ;jump to add hl,hl instruction
                add     hl, de
                ex      de, hl
                inc     iy
                dec     c

                exx
                djnz    exo_initbits

exo_literalcopy:
                ldi

exo_mainloop:
                m_getbit
                jr      c, exo_literalcopy
                ld      bc, 240-1
exo_getindex:
                m_getbit
                inc     c
                jr      nc,exo_getindex
                ret     z
                jp      p, exo_literalrun

                push    de
                ld      iy, exo_mapbasebits+11-240
                call    exo_getpair
                push    de
                rlc     d
                jr      nz, exo_dontgo
                dec     e
                ld      bc, 2*256 + 8   ;2 bits, 48 offset
                jr      z, exo_goforit
                dec     e               ;2?
exo_dontgo:     ld      bc, 4*256 + 1   ;4 bits, 32 offset
                jr      z, exo_goforit
                dec     c
exo_goforit:
                m_getbit
                rl      c
                djnz    exo_goforit

                ld      iy, exo_mapbasebits+11+16
                call    exo_getpair
                pop     bc
                ex      (sp), hl
                push    hl
                sbc     hl, de
                pop     de
                ldir
                pop     hl
                JPX     exo_mainloop    ;Next!

exo_literalrun:
                ld      b,(hl)
                inc     hl
                ld      c,(hl)
                inc     hl
                ldir
                JPX     exo_mainloop    ;Next!


exo_getpair:    add     iy, bc

                ld      d, b
                ld      e, b

                ld      c, (iy-11)
                ld      b, c
                srl     b

                jr      z,.skp3
.lp1:
                m_getbit
                rl      e
                djnz    .lp1
.skp3:
                bit     0,c
                jr      z,.skp4

                ld      d,e
                ld      e,(hl)
                inc     hl
.skp4:
                ex      de, hl
                ld      c, (iy+41)
                ld      b, (iy+93)
                add     hl, bc          ;Always clear C flag
                ex      de, hl
                ret

p_getbit:
              IFNDEF INLINE_GETBIT
                add     a
                ret     nz
              ENDIF
                ld      a, (hl)
                inc     hl

                rla
                ret


exo_mapbasebits:
                ;defs    156             ;tables for bits, baseL, baseH



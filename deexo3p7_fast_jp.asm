;Exomizer 3 raw -P7(default) Z80 decoder
;Copyright (C) 2008-2016 by Jaime Tejedor Gomez (Metalbrain)
;
;Optimized by Antonio Villena and Urusergi (169 bytes)
;Modified using z80 alternate registers to prevent undocumented instruction(169 -> 167bytes)
;Modified for Exomizer 3 raw -P7(default) (167 -> 195bytes)
;Apply speed boost( 195 -> 202bytes )
;Replace JR with JP( 202 -> 204bytes )
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
;A huge speed boost (around 14%) can be gained at the cost of only 7 bytes.
;If you want this, replace all instances of "call exo_getbit" with "sla a" followed by
;"call z,exo_getbit", and remove the first two instructions in exo_getbit routine.

deexo:          ld      iy, exo_mapbasebits+11

                ld      a, (hl)
                inc     hl

tableinit:
                ld      bc, 52 * 256 + 1
                cp      a ; SET ZF

exo_initbits:
                exx

                ld      hl, 1
                ld      c, 16
                jr      nz, exo_get4bits
                ld      b, c
                ld      d, h
                ld      e, l

exo_get4bits:   exx
                sla     a
                call    z,exo_getbit   ;get one bit
                exx

                rl      c
                jr      nc, exo_get4bits

                ex      af,af';'
                srl     c
                jr      nc,.skp1
                ld      a,c
                or      8
                ld      c,a
.skp1:
                ex      af,af';'

                inc     c
                ld      (iy+41), c      ;bits[i]=b1 (and opcode 41 == add hl,hl)
exo_setbit:     dec     c
                jr      nz, exo_setbit-1 ;jump to add hl,hl instruction
                ld      (iy-11), e
                ld      (iy+93), d      ;base[i]=b2
                add     hl, de
                ex      de, hl
                inc     iy
                dec     b

                exx
                djnz    exo_initbits

exo_literalcopy:
                ldi

exo_mainloop:   inc     c
                sla     a
                call    z,exo_getbit      ;literal?
                jr      c, exo_literalcopy
                ld      c, 239
exo_getindex:
                sla     a
                call    z,exo_getbit
                inc     c
                jr      nc,exo_getindex
                ret     z
                jp      p, exo_literalrun

                push    de
                ld      d, b
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
exo_goforit:
                sla     a
                call    z,exo_getbit
                rl      e
                djnz    exo_goforit

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
                jp      exo_mainloop    ;Next!

exo_literalrun:
                ld      b,(hl)
                inc     hl
                ld      c,(hl)
                inc     hl
                ldir
                jp      exo_mainloop


exo_getpair:    add     iy, bc
                ld      e, d
                ld      c, (iy+41)

                ex      af,af';'

                dec     c
                ld      a,c
                and     7
                ld      b,a
                ld      a,c

                jr      z,.skp3
                ex      af,af';'
.lp1:
                sla     a
                call    z,exo_getbit
                rl      e
                djnz    .lp1
                ex      af,af';'
.skp3:
                and     8
                jr      z,.skp4

                ld      d,e
                ld      e,(hl)
                inc     hl
.skp4:
                ex      af,af';'

                ex      de, hl
                ld      c, (iy-11)
                ld      b, (iy+93)
                add     hl, bc          ;Always clear C flag
                ex      de, hl
                ret

exo_getbit:
                ld      a, (hl)
                inc     hl

                rla
                ret


exo_mapbasebits:
                ;defs    156             ;tables for bits, baseL, baseH



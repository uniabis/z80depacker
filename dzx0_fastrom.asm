;
;  Speed-optimized ZX0 decompressor by spke, Without self-modified code by uniabis (180 bytes)
;
;  ver.00 by spke (27/01-23/03/2021, 191 bytes)
;  ver.01 by spke (24/03/2021, 193(+2) bytes - fixed a bug in the initialization)
;  ver.01patch2 by uniabis (25/03/2021, 191(-2) bytes - fixed a bug with elias over 8bits)
;  ver.01patch5 by uniabis (29/03/2021, 191 bytes - a bit faster)
;  ver.01rom by uniabis (07/06/2021, 184(-7) bytes - support for ROM, but slower than the "Turbo")
;  ver.01rom5 by uniabis (16/08/2021, 180(-4) bytes - support for ROM, but slower than the "Fast")
;
;  Original ZX0 decompressors were written by Einar Saukas
;
;  This decompressor was written on the basis of "Standard" decompressor by
;  Einar Saukas and optimized for speed by spke. This decompressor is
;  about 5% faster than the "Turbo" decompressor, which is 128 bytes long.
;  It has about the same speed as the 412 bytes version of the "Mega" decompressor.
;
;  The decompressor uses AF, BC, DE, HL and IX and IY(optional).
;
;  The decompression is done in the standard way:
;
;  ld hl,FirstByteOfCompressedData
;  ld de,FirstByteOfMemoryForDecompressedData
;  call DecompressZX0
;
;  Of course, ZX0 compression algorithms are (c) 2021 Einar Saukas,
;  see https://github.com/einar-saukas/ZX0 for more information
;
;  Drop me an email if you have any comments/ideas/suggestions: zxintrospec@gmail.com
;
;  This software is provided 'as-is', without any express or implied
;  warranty.  In no event will the authors be held liable for any damages
;  arising from the use of this software.
;
;  Permission is granted to anyone to use this software for any purpose,
;  including commercial applications, and to alter it and redistribute it
;  freely, subject to the following restrictions:
;
;  1. The origin of this software must not be misrepresented; you must not
;     claim that you wrote the original software. If you use this software
;     in a product, an acknowledgment in the product documentation would be
;     appreciated but is not required.
;  2. Altered source versions must be plainly marked as such, and must not be
;     misrepresented as being the original software.
;  3. This notice may not be removed or altered from any source distribution.

        ; +4byte, bit faster
        DEFINE AllowUsingIY

        ; +2bytes, bit slower, support for hd64180/z180
        ;DEFINE HD64180

DecompressZX0:

        IFDEF AllowUsingIY
        ld      iy, CopyMatch1
        ENDIF

        ld      ix, $ffff
        ld      bc, $0001
        scf
        jr      RunOfLiteralsEntry

ShorterOffsets:

        IFDEF HD64180
        ld      b, $ff                  ; the top byte of the offset is always $FF
        ELSE
        ld      ixh, $ff                ; the top byte of the offset is always $FF
        ENDIF

        ld      c, (hl)
        inc     hl
        rr      c

        IFDEF HD64180
        push    bc
        pop     ix
        ELSE
        ld      ixl, c
        ENDIF

        jr      nc, LongerMatch

CopyMatch2:                             ; the case of matches with len=2

        IFDEF HD64180
        ld      bc, 2
        ELSE
        ld      c, 2
        ENDIF

        ; the faster match copying code
CopyMatch1:
        push    ix                      ; preserve offset
        ex      (sp), hl                ; preserve source
        add     hl, de                  ; HL = dest - offset
        ldir
        pop     hl                      ; restore source

        ; after a match you can have either
        ; 0 + <elias length> = run of literals, or
        ; 1 + <elias offset msb> + [7-bits of offset lsb + 1-bit of length] + <elias length> = another match
AfterMatch1:
        add     a, a
        jr      nc, RunOfLiterals

UsualMatch:                             ; this is the case of usual match+offset
        add     a, a
        jr      nc, LongerOffets
        jr      nz, ShorterOffsets      ; NZ after NC == "confirmed C"

        ld      a, (hl)                 ; reload bits
        inc     hl
        rla

        jr      c, ShorterOffsets

LongerOffets:
        inc     c

        add     a, a                    ; inline read gamma
        rl      c
        add     a, a
        jr      nc, $-4

        call    z, ReloadReadGamma

ProcessOffset:

        ld      b, a
        xor     a
        sub     c
        ret     z                       ; end-of-data marker (only checked for longer offsets)

        rra

        IFDEF HD64180

        ld      c, a
        ld      a, b
        ld      b, c

        ld      c, (hl)
        inc     hl
        rr      c

        push    bc
        pop     ix

        ELSE

        ld      ixh, a
        ld      a, (hl)
        inc     hl
        rra
        ld      ixl, a
        ld      a, b
        ld      b, 0

        ENDIF

        ; lowest bit is the first bit of the gamma code for length
        jr      c, CopyMatch2

LongerMatch:
        IFDEF HD64180
        ld      bc, 1
        ELSE
        ld      c, 1
        ENDIF

        add     a, a                    ; inline read gamma
        rl      c
        add     a, a
        jr      nc, $-4

        call    z,ReloadReadGamma

CopyMatch3:
        push    ix                      ; preserve offset
        ex      (sp), hl                ; preserve source
        add     hl, de                  ; HL = dest - offset

        ; because BC>=3-1, we can do 2 x LDI safely
        ldi
        ldir
        inc     c
        ldi
        pop     hl                      ; restore source

        ; after a match you can have either
        ; 0 + <elias length> = run of literals, or
        ; 1 + <elias offset msb> + [7-bits of offset lsb + 1-bit of length] + <elias length> = another match
AfterMatch3:
        add     a, a
        jr      c, UsualMatch

RunOfLiterals:
        inc     c
        add     a, a
        jr      nc, LongerRun
        jr      nz, CopyLiteral         ; NZ after NC == "confirmed C"

RunOfLiteralsEntry:
        ld      a, (hl)                 ; reload bits
        inc     hl
        rla

        jr      c, CopyLiteral

LongerRun:
        add     a, a                    ; inline read gamma
        rl      c
        add     a, a
        jr      nc, $-4

        jr      nz, CopyLiterals

        ld      a, (hl)                 ; reload bits
        inc     hl
        rla

        call    nc, ReadGammaAligned

CopyLiterals:
        ldi

CopyLiteral:
        ldir

        ; after a literal run you can have either
        ; 0 + <elias length> = match using a repeated offset, or
        ; 1 + <elias offset msb> + [7-bits of offset lsb + 1-bit of length] + <elias length> = another match
        add     a, a
        jr      c, UsualMatch

RepMatch:
        inc     c
        add     a, a
        jr      nc, LongerRepMatch
        jr      nz, CopyMatch1          ; NZ after NC == "confirmed C"

        ld      a, (hl)                 ; reload bits
        inc     hl
        rla

        jr      c, CopyMatch1

LongerRepMatch:
        add     a, a                    ; inline read gamma
        rl      c
        add     a, a
        jr      nc, $-4

        IFDEF AllowUsingIY

        jp      nz, CopyMatch1

        ; this is a crafty equivalent of CALL ReloadReadGamma : JP CopyMatch1
        push    iy

        ELSE

        call    z, ReloadReadGamma
        jr      CopyMatch1

        ENDIF

        ;  the subroutine for reading the remainder of the partly read Elias gamma code.
        ;  it has two entry points: ReloadReadGamma first refills the bit reservoir in A,
        ;  while ReadGammaAligned assumes that the bit reservoir has just been refilled.
ReloadReadGamma:
        ld      a, (hl)                 ; reload bits
        inc     hl
        rla

        ret     c
ReadGammaAligned:
        add     a, a
        rl      c
        add     a, a
        ret     c
        add     a, a
        rl      c
ReadingLongGamma1:
        rla
ReadingLongGamma2:                      ; this loop does not need unrolling, as it does not get much use anyway
        ret     c
        add     a, a
        rl      c
        rl      b
        add     a, a
        jr      nz, ReadingLongGamma2

        ld      a, (hl)                 ; reload bits
        inc     hl

        jr      ReadingLongGamma1

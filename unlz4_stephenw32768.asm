	;; https://www.worldofspectrum.org/forums/discussion/45185/lz4-decoder/p2
	;;
	;; decoder for LZ4 compressed data.  Written from specification:
        ;; http://fastcompression.blogspot.com/2011/05/lz4-explained.html
        ;;
        ;; Inputs:
        ;; HL: address of compressed data
        ;; DE: destination address
        ;;
        ;; Leaves HL pointing one byte past compressed data and DE
        ;; pointing one byte past decompressed data, a la LDIR.  Leaves
        ;; zero in BC.  Does not use IX or IY.  Uses the shadow
        ;; accumulator but not shadow BC, DE or HL.
        

unlz4:
        ld      b,0     ; rest of code can assume B=0
.mainloop:
        ld      a,(hl)  ; place token into accumulator
        ;; the high nibble of the token contains the number
        ;; of literal bytes to read from the source, or zero
        ;; if none.  The low nibble is four less than the
        ;; number of already-decompressed bytes to copy
        inc     hl      ; advance past token
        ld      c,a     ; keep a copy of the token
        cp      0x10    ; check if any bits in the high nibble are set
        jr      c,.read_offset ; jump forward if not; no literals to copy
        ex      af,af'  ; move token into shadow accumulator
        ld      a,0xf0  ; load accumulator with a mask for the high nibble
        and     c       ; combine with token to isolate high nibble
        rra             ; move the high nibble into the low nibble
        rra
        rra
        rra
        ld      c,a     ; copy into byte counter
        cp      15      ; see if it's equal to 15
        call    z,.getlength_2; get additional length if so
        ldir            ; copy this many bytes

        ex      af,af'  ; switch token back into accumulator
        and     15      ; isolate match length
        ld      c,a     ; save in byte counter

        ;; at this point, we have in C a token with only
        ;; the lowest four bits set, i.e. four less than the
        ;; number of already-decompressed bytes to copy
.read_offset:
        ;; we have to read the offset from the current destination
        ;; position of the bytes to copy.  It must be at least one;
        ;; if it's zero, we know we've hit the end of the compressed
        ;; data
        push    de      ; save destination pointer
        ld      e,(hl)  ; read the low byte of the offset
        ld      a,e     ; copy into accumulator
        inc     hl      ; point to high byte of the offset
        ld      d,(hl)  ; read it
        or      d       ; combine with accumulator
        inc     hl      ; advance past it
        jr      z,.out  ; return if accumulator empty -- zero offset

        ;; now we copy a sequence of bytes that have already
        ;; been decompressed
        ld      a,4     ; always at least four bytes to copy
        add     a,c     ; add to token/byte counter
        ld      c,a     ; store in byte counter
        xor     19      ; see if it's equal to 19 and clear carry
        call    z,.getlength; get additional length if so
        ex      (sp),hl ; switch destination pointer into HL
        push    hl      ; save a copy
        ;; (does SBC work if offset is greater than 32767?)
        sbc     hl,de   ; subtract offset from HL (carry is clear)
        ;; now, HL is pointing at bytes to copy
        pop     de      ; restore destination pointer
        ldir            ; copy bytes
        pop     hl      ; restore source pointer
        jr      .mainloop

.out:
        pop     de      ; restore saved destination
        ret

        ;; reads the length of a sequence of literals or bytes
        ;; to copy.  BC is the byte counter; on entry, it will
        ;; contain either 15 (for literals) or 19 (for already-
        ;; decompressed bytes.  The sequence consists of bytes
        ;; to be added to the byte counter, and ends when a
        ;; byte in the sequence is less than 255.
        ;;
        ;; The .getlength_2 entry point is used if the accumulator
        ;; already contains a copy of the initial 8-bit byte
        ;; counter value.
        ;;
        ;; The routine leaves carry clear
.getlength:
        ld      a,c     ; read low byte of byte counter
.getlength_2:           ; entry point for if C already copied to A
        add     a,(hl)  ; add length byte
        ld      c,a     ; store in byte counter (4T)
        jr      nc,.getlength_nocarry ; jump forward if carry not set (7/12T)
        inc     b       ; add carry to high byte of counter (4T)
        and     a       ; clear carry (4T)
.getlength_nocarry:
        ld      a,(hl)  ; re-read the byte (7T)
        inc     a       ; set zero if it's 255 (4T)
        inc     hl      ; advance pointer (6T)
        ret     nz      ; return if byte was not 255 (5/11T)
        jr      .getlength      ; get the next byte (12T)

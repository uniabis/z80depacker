;
;  Size-optimized LZF decompressor by spke (v.1 21-24/08/2018, 56 bytes)
; (v.1 21p1-02/06/2022, 55 bytes)
;
;  The data must be comressed using the nearly optimal LZF command line compressor
;  (c) 2013-2018 Ilya Muravyov (aka encode); the command line is:
;
;  lzf.exe cx <sourcefile> <outfile>
;
;  where option cx gives you the best possible compression.
;
;  The ver.1.03 binary can be downloaded from
;  https://encode.su/threads/1819-LZF-Optimized-LZF-compressor?p=57818&viewfull=1#post57818
;  (please note that versions prior to ver.1.03 have incompatible format with the unpacker)
;
;  The decompression is done in the standard way:
;
;  ld hl,CompressedData
;  ld de,WhereToDecompress
;  call DecompressLZF
;
;  Of course, LZF compression algorithm is (c) 2000-2008 Marc Alexander Lehmann;
;  see http://oldhome.schmorp.de/marc/liblzf.html
;
;  Drop me an email if you have any comments/ideas/suggestions: zxintrospec@gmail.com
;


@DecompressLZF:	ld b,0 : jr MainLoop				; all copying is done by LDIR; B needs to be zero


ProcessMatches:	exa


		ld a,(hl) : inc hl
		rlca : rlca : rlca : inc a
		and %00000111 : jr nz,CopyingMatch


LongMatch:	ld a,(hl) : add 8 : inc hl			; len == 9 means an extra len byte needs to be read
		rl b


CopyingMatch:	ld c,a : inc bc : exa : jr nz,NotTheEnd		; token == #20 suggests a possibility of the end marker (#20,#00)


		xor a : cp (hl) : ret z				; is it the end marker? return if it is


NotTheEnd:	and %00011111					; A' = high(offset); also, reset flag C for SBC below
		push hl : ld l,(hl) : ld h,a			; HL = offset
		push de : ex de,hl				; DE = offset, HL = dest
		sbc hl,de					; HL = dest-offset
		pop de
		ldir
		pop hl : inc hl


MainLoop:	ld a,(hl) : cp #20 : jr nc,ProcessMatches	; tokens "000lllll" mean "copy lllll+1 literals"


ProcessLiterals:
		inc a : ld c,a : inc hl : ldir			; actual copying of the literals
		jr MainLoop

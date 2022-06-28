;
;  Speed-optimized LZF decompressor by spke (v.1 21-29/08/2018, 86 bytes)
;(v.1 21p1-28/06/2022, 76 bytes)
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


@DecompressLZF:	ld b,0 : jr MainLoop
 
ProcessMatches:	jr z,Token20
NotTheEnd:	sub #E0 : jr nc,LongMatch


ShortMatch:	rlca : rlca : rlca
		and %00000111
		inc a : ld c,a				; BC = len


		ld a,(hl) : inc hl
		and %00011111				; A = high(offset)


CopyingMatch:	push hl : ld l,(hl) : ld h,a		; HL = offset
CopyingMatch2:	push de : ex de,hl			; DE = offset, HL = dest
		sbc hl,de				; HL = dest-offset
		pop de
		ldir
		pop hl : inc hl


MainLoop:	ld a,(hl) : cp #20 : jr nc,ProcessMatches


ProcessLiterals:
		inc a : ld c,a : inc hl			; tokens "000lllll" mean "copy lllll+1 literals"
		ldir


		ld a,(hl) : cp #20 : jr c,ProcessLiterals

		jp nz,NotTheEnd

Token20:	inc hl : ld a,(hl) : or a : ret z	; token #20 is shadowing as the first byte of the end marker

		ld c,3
		push hl : ld l,a : ld h,b
		jp CopyingMatch2

LongMatch:	exa : inc hl
		ld a,(hl) : inc hl
		add 9 : ld c,a : rl b
		exa : jp CopyingMatch

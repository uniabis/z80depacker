;
;  LZ4 decompressor by spke (v.1 28/08/2017)
;
;  I wrote this LZ4 decompressor from scratch; however, I looked at previously released
;  LZ4 decompressors by Piotr Drapich, see http://www.union.org.pl/download/z80/
;  and stephenw32768, see https://www.worldofspectrum.org/forums/discussion/45185/lz4-decoder/p2
;  Many of their good ideas ended up in my code too (my favourite trick invented by Piotr is
;  reading extra bytes into C). I hope my added tricks are worthwhile to call this unpacker new.
;
;  Piotr Drapich's and stephenw32768's unpackers are both very fast. Piotr's code takes about
;  33.8 t-states to unpack a byte. stephenw32768's unpacker unpacks a byte within about 34.4 t-states.
;  This routine is about 2.4% faster than Piotr's, so it takes 33 t-states to unpack a byte, which
;  is nearly reaching my personal target of decompressing at 1.5*LDIR. It uses 104 bytes of memory.
;
;  the command line for the official LZ4 command line compressor is
;
;  lz4.exe -16 --no-frame-crc <sourcefile> <outfile>
;
;  where -16 gives you the best possible compression (which is not that great actually),
;  and --no-frame-crc makes data somewhat easier to handle. You can download the binaries
;  from http://lz4.github.io/lz4/
;
;  Of course, LZ4 decompression algorithm is (c) 2011-2015, Yann Collet.
;
;  Drop me an email if you have any comments/ideas/suggestions: zxintrospec@gmail.com
;


	DEFINE	ALLOW_LDIR_UNROLLING
	DEFINE	DATA_HAS_HEADERS			; comment this line out if using to decompress a stripped (frameless) ZX4 data
	;DEFINE	ALLOW_UNCOMPRESSED			; uncomment to correctly process uncompressed blocks (i've no idea why you would do such a thing!)


DecompressLZ4:	; generally speaking, .LZ4 file can contain multiple frames (compressed or uncompressed);
		; each frame has header descriptors and may, in addition, contain checksums,
		; see the details: https://docs.google.com/document/d/1cl8N1bmkTdIpPLtnlzbBSFAdUeyNo5fwfHbHU7VRNWY/edit
		; we ignore pretty much all of this machinery and assume a single compressed frame.
	IFDEF	DATA_HAS_HEADERS
		ld bc,4 : add hl,bc						; skip 4 "magic" bytes at the start of the frame
	IFNDEF	ALLOW_UNCOMPRESSED
		ld a,(hl)							; must also skip "Frame Descriptor" (3 bytes) and "Block Size" (4 bytes)
		and 8								; bit 3 of the "FLG" byte is 1 if "Content Size" is included...
		add 3+4 : ld c,a						; ..which may also need to be skipped ("Content Size" is 8 bytes long)
		add hl,bc							; skip all that needs to be skipped
	ELSE
		ld a,(hl)							; must also skip "Frame Descriptor" (3 bytes)
		and 8								; bit 3 of the "FLG" byte is 1 if "Content Size" is included...
		add 3 : ld c,a							; ..which may also need to be skipped ("Content Size" is 8 bytes long)
		add hl,bc							; skip all that needs to be skipped

		ld c,(hl) : inc hl : ld b,(hl) : inc hl
		ld a,b : or c : ret z						; frame end marker?

		inc hl : ld a,(hl) : inc hl : rla : jr nc,Compressed
		ldir : ret

Compressed:	ld b,0
	ENDIF
	ELSE
		; also, this decompressor may be used to handle stripped (headerless) file generated by the tool developed by
		; stephenw32768, see https://www.worldofspectrum.org/forums/discussion/comment/727516/#Comment_727516
		ld b,0								; B is assumed to zero throughout, which saves on clearing it
	ENDIF

DecompressRaw:

		jr ReadToken							; a small price to pay to getting rid of a JP per every short match!

ShortMatch:
CopyMatch:
		ld c,a : ex (sp),hl : ex hl,de					; BC = len, DE = dest, HL = -offset, SP ->[src]
		add hl,de							; BC = len, DE = dest, HL = dest+-offset, SP->[src]
	IFDEF	ALLOW_LDIR_UNROLLING
		ldi
		ldi
		ldi
	ENDIF
		ldir : pop hl							; BC = 0, DE = dest, HL = src

ReadToken:	; first a byte token "LLLLMMMM" is read from the stream,
		; where LLLL is the number of literals and MMM is
		; a length of the match that follows the literals
		ld a,(hl) : exa : ld a,(hl) : inc hl				; token is read twice to be re-used later
		and #F0 : jr z,NoLiterals

		; we definitely have literals to copy
		rrca : rrca : rrca : rrca : cp 15 : jr nz,CopyLiterals		; LLLL<15 means 0..14 literals...

		; LLLL=15 indicates a multi-byte number of literals
ReadLongNumber:	ld c,(hl) : inc hl : add c : jr c,NumberOverflow		; overflow does not happen often, hence the ugly branching
NumberContinue:	inc c : jr z,ReadLongNumber

CopyLiterals:	ld c,a : ldir

		; second, a two-byte offset value is given
		; since every compressed block must end with 5 literals,
		; or more, and since after the end of the block the end
		; marker is given, which is 4 zero bytes, we can use
		; zero offset as a marker of the end of the block
		; (see https://github.com/lz4/lz4/wiki/lz4_Block_format.md)
		xor a
NoLiterals:	push de								; SP -> [dest]
		sub (hl) : inc hl : ld e,a
		sbc (hl) : sub e : ld d,a					: DE = -offset
		or e : jr z,BlockEnd						; ugly branching is optimized for speed
		inc hl

		; this is optimized for shorter matches, because
		; they are likely to be a lot more common
ProcessMatch:	exa : and #0F : add 4 : cp 15+4 : jp c,ShortMatch		; MMMM+4<15+4 means match lengths between 0+4 and 14+4

		; MMMM=15 indicates a multi-byte length of the match
LongerMatch:
ReadMatchLen:	ld c,(hl) : inc hl : add c : jr c,MatchIncB			; overflow does not happen often, hence the ugly branching
MatchContinue:	inc c
		jr nz,CopyMatch
		jp ReadMatchLen

NumberOverflow:	inc b : jp NumberContinue

MatchIncB:	inc b : jp MatchContinue

BlockEnd:	pop de : ret





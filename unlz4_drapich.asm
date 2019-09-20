;
; LZ4 decompression algorithm - Copyright (c) 2011-2015, Yann Collet
; All rights reserved. 
; LZ4 implementation for z80 and compatible processors - Copyright (c) 2013-2015 Piotr Drapich
; All rights reserved.
;
; Redistribution and use in source and binary forms, with or without modification, 
; are permitted provided that the following conditions are met: 
; 
; * Redistributions of source code must retain the above copyright notice, this 
;   list of conditions and the following disclaimer. 
; 
; * Redistributions in binary form must reproduce the above copyright notice, this 
;   list of conditions and the following disclaimer in the documentation and/or 
;   other materials provided with the distribution. 
;
; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
; ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
; WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
; DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR 
; ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
; (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; 
; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON 
; ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
; (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
; SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
;
; The latest version always available from http://www.union.org.pl/download/lz4/z80
; Questions, ideas, optimization suggestions, consulting requests? Send email to union@union.pl
; 
; Only 250 bytes of code with fully relocatable raw data decompression routine taking only 94 bytes.
; Supports both legacy and latest LZ4 data format (1.5.1) with framing but without checksum calculations.
;
; History:
; version 1.0 (18.09.2013)
; - initial implementation for legacy compression formats, generated with lz4 1.3.3 or earlier
; version 1.1 (28.02.2015)
; - added support for files, compressed with the lz4 version 1.4
; - Only 219 bytes of code with fully relocatable raw data decompression routine taking only 109 bytes.
; version 1.2 (10.09.2016)
; - updated to support lz4 frame format specification version 1.5.1
; - added support for files, compressed with the lz4 version up to 1.7.2
; - code reorganization and optimization. The effect - 21% boost in decompression speed. 
; Now the decompression routine is just a few percent slower than a simple loop, copying uncompressed data.
; 
; Available functions:
; LZ4_Decompress
; - decompresses files, packed with lz4 command line tool, preferably with options -Sx -B4 (for older versions)
; or --no-frame-crc -B4 for the latest versions.
; input parameters:
; HL - pointer to the buffer with compressed source data
; DE - pointer to the destination buffer for decompressed data
; on exit:
; A  - contains exit code: 
; 	0 - decompression successful
;	1 - unsupported version of lz4 frame compression format
;	2 - compressed file too big (>64kb)
;	3 - block of data is not compressed
; HL - the number of decompressed bytes
; Contents of AF,AF',BC,DE,HL,IX are not preserved.
;
; LZ4_Decompress_raw
; - decompresses raw LZ4 compressed block data 
; input parameters:
; HL - pointer to the buffer with compressed source data
; DE - pointer to the destination buffer for decompressed data
; BC - size of the compressed data
; on exit:
; A  - exit code: 
; 	0 - decompression successful
; HL - the number of decompressed bytes
; Contents of AF,AF',BC,DE,HL,IX are not preserved.

LZ4_OK			equ 0
LZ4_NOTSUPPORTED	equ 1
LZ4_TOOBIG		equ 2
LZ4_NOTCOMPRESSED	equ 3

LZ4_Decompress:
	ld		bc,0
; check the header magic number to detect the correct version
	ld		a,(hl)
	cp		#4
	jr		z, LZ4_Version4
	cp		#3
	jr		z, LZ4_LegacyVersion3
	cp		#2
	jr		z, LZ4_LegacyVersion2
	jr		LZ4_Version_not_supported

LZ4_Data_not_compressed:
	pop		af						; restore stack
	pop		hl
	ld		a, LZ4_NOTCOMPRESSED
	jr		LZ4_Decompress_finished
LZ4_File_too_big:
	pop		af						; restore stack
	pop		hl
	ld		a, LZ4_TOOBIG
	jr		LZ4_Decompress_finished
LZ4_Version_not_supported:
	ld		a, LZ4_NOTSUPPORTED
LZ4_Decompress_finished:
	ret

LZ4_Version4:
; verify magic number as per spec to confirm the correct version 
	inc		hl
	ld		a,(hl)
	inc		hl
	cp		#22
	jr		nz, LZ4_Version_not_supported
	ld		a,(hl)
	inc		hl
	cp		#4D
	jr		nz, LZ4_Version_not_supported
	ld		a,(hl)
	inc		hl
	cp		#18
	jr		nz, LZ4_Version_not_supported
; parse version 1.5.1 spec header
	ld		a,(hl)						; get FLG byte into both a and a'
	ex		af,af'
	ld		a,(hl)
	inc		hl
; parse FLG byte of the header
; check version bits for version 01
	bit		7,a
	jr		nz, LZ4_Version_not_supported
	bit		6,a
	jr		z, LZ4_Version_not_supported
; is content size set?
	bit		3,a
	jr		z, LZ4_No_content_size
; skip content size
	ld		c,8
LZ4_No_content_size:
; check for dictionary bit - as per version 1.5.1 spec, dictionary id has been removed
; and this bit is now reserved. Left it here for backward compatibility
	bit		0,a
	jr		z, LZ4_No_preset_dictionary
; skip dictionary id
	ld		a,c
	add		a,4
	ld		c,a
LZ4_No_preset_dictionary:
; parse BD byte of the header
	ld		a,(hl)
	inc		hl
; strip reserved bits and check if block max size bit (4) is set to 64kb
	and		#40
	jr		z, LZ4_Version_not_supported
; skip header checksum
	inc		c
	jr		LZ4_Start_decompression

LZ4_LegacyVersion3:
	ld		c,8						; set skip for legacy version 
LZ4_LegacyVersion2:
; verify magic number to confirm the correct version 
	inc		hl
	ld		a,(hl)
	inc		hl
	cp		#21
	jr		nz, LZ4_Version_not_supported
	ld		a,(hl)
	inc		hl
	cp		#4c
	jr		nz, LZ4_Version_not_supported
	ld		a,(hl)
	inc		hl
	cp		#18
	jr		nz, LZ4_Version_not_supported
	xor		a

LZ4_Start_decompression:
	add		hl,bc						; skip various frame header fields
	push		de						; store destination data pointer
	ex		af,af'

LZ4_Decompress_block:
	push		af						; store FLGbyte for later
; load low 16 bit of compreesed block size to bc
	ld		c,(hl)
	inc		hl
	ld		b,(hl)
	inc		hl
; if size equals 0 - it is an EndMark and there is no more blocks to decompress
	ld		a,c
	or		b
	jr		z, LZ4_Decompression_finished
; check if compressed size field <64kb - high 16 bits of compressed size must be 0
	ld		a,(hl)
	or		a
	jr		nz,LZ4_File_too_big
	inc		hl
	ld		a,(hl)
	bit		7,a
	jr		nz, LZ4_Data_not_compressed
	or		a
	jr		nz,LZ4_File_too_big
	inc		hl
	call	LZ4_Decompress_raw
	pop		af
; check if there is block checksum available
	bit		4,a
	jr		z, LZ4_Skip_block_checksum
	ld		bc,4
	add		hl,bc
LZ4_Skip_block_checksum:
	jr		LZ4_Decompress_block

LZ4_Decompression_finished:
	pop		af
	pop		hl						; restore destination pointer 
	ex		de,hl
	sbc		hl,de						; calculate the number of decompressed bytes 
	xor		a
	ret

; decompress raw lz4 data packet
; on entry hl - start of packed data buffer, de - destination buffer, bc - size of packed data
; on exit hl - current position at packed buffer, de - current destination buffer
LZ4_Decompress_raw:
	push		hl						; store start of compressed data source
	add		hl,bc 						; calculate end address of compressed block
	ld		b,h						; move end address of compressed data to bc
	ld		c,l	
	pop		hl						; restore start of compressed data source
	push		bc						; copy end address of compressed data to ix
	pop		ix
; now hl - start of packed buffer, de - destination ptr, ix - end of packed buffer
	ld		b,0		         			; clear b, c is set later
; get decompression data token
LZ4_GetToken:
	ld		a,(hl)						; read token
	inc		hl
	ld 		c,a						; store token in c for later use
	cp 		#10						; check the literal length (upper 4 bits) is not 0
	jr		c,LZ4_CopyMatches 	 			; there is no literals, skip calculation of literal size
; unpack 4 high bits to get the length of literal
	ex		af,af'
	ld		a,c						; get token back 
	and		#f0						; mask other uneccessary bits
	rlca								; rotate upper 4 bits into lower part
	rlca
	rlca
	rlca
	cp		#f						; if literal size <15
	jr		nz, LZ4_CopyLiterals				; copy literal, else
; calculate total literal size by adding contents of following bytes
LZ4_Calcloop:
	ld 		c,(hl)						; get additional literal size to add 
	inc 		hl
	add 		a,c						; add it to the total literal size
	jr 		nc, LZ4_CalcloopNoCarry				; if size > 255
	ccf								; clear carry
	inc 		b						; increment b to accomodate for new size
LZ4_CalcloopNoCarry:
	inc 		c						; test if literal size equals 255
	jr		z, LZ4_Calcloop					; yes - continue calculation

LZ4_CopyLiterals:
	ld 		c,a
	ldir								; copy literal to destination
	ex		af,af'
LZ4_CopyMatches:							; Copy Matches to the destination
	ex		af,af'						; check for end of compressed data
	ld		a,ixl						; undocumented instruction - replace with db #dd; ld a,l if your assembler doesnt support it
	cp		l
	jr		nz, LZ4_GetOffset
	ld		a, ixh						; undocumented instruction - replace with db #dd; ld a,h if your assembler doesnt support it
	cp		h
	jr		z,LZ4_Decompress_success			; decompression finished
LZ4_GetOffset:
	ex		af,af'
	and		#f						; token can be max 15 - mask out unimportant bits. resets also c flag for sbc later
	add		a,4						; as the offset of 0 defines the size of 4 bytes, add it here 
	ld		c,(hl)						; get the offset into bc
	inc		hl
	ld		b,(hl)
	inc		hl
	push		hl						; store current compressed data pointer
	ld		h,d
	ld		l,e
	sbc		hl,bc   					; calculate the new decompressed data source to copy from
	ld		b,0	     					; load bc with the token
	ld		c,a
	cp		#f+4						; check if matchlength <15 (19 because of added 4 earlier)
	jr 		nz, LZ4_copymatch				; copy matches. else 
	ex		(sp), hl					; get current compressed pointer into hl
; calculate total matches size by adding contents of following bytes
LZ4_Calcloop2:
	ld 		c,(hl)						; get additional match sizes to add
	inc 		hl
	add 		a,c						; add it to the total match size
	jr 		nc, LZ4_CalcloopNoCarry2			; if size > 255
	ccf								; clear carry
	inc 		b						; increment b to accomodate for new size
LZ4_CalcloopNoCarry2:
	inc 		c						; test if match size equals 255
	jr		z, LZ4_Calcloop2				; yes - continue calculation
	ld		c,a
	ex		(sp), hl					; store current compressed data pointer on stack

LZ4_copymatch:
	ldir								; copy match
	pop		hl						; restore current compressed data pointer from stack
	jr		LZ4_GetToken					; continue decompression

LZ4_Decompress_success:
	xor		a						; clear exit code
	ret

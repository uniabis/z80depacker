;------------------------------------------------------------------------------
;hl=src de=dst
lz4decrunch:

	IFDEF	DATA_HAS_HEADERS

	ld			bc,7
	add			hl,bc
	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;ヘッダから 2byte サイズを取得
	inc			hl
	inc			hl
	inc			hl							;+$0B から展開開始

	ld			a,l
	add			a,c
	ld			(.endL+1),a
	ld			a,h
	adc			a,b
	ld			(.endH+1),a					;圧縮データの終端アドレス

	ENDIF

.loop:
	ld			a,(hl)
	inc			hl
	ld			(.litteral+1),a
	and			$F0
	jr			z,.copy						;長さ 0 なら既に転送済みのデータをコピー
	rrca
	rrca
	rrca
	rrca
	ld			b,0
	ld			c,a
	cp			$0F
	call		z,.getlength				;長さ $0F なら続けて追加の長さを取得する

	ldir									;長さ情報の次から転送開始

.copy:

	IFDEF	DATA_HAS_HEADERS

	ld			a,l							;圧縮データが最終アドレスに達したかどうか
.endL:
	sub			$FF
	ld			a,h
.endH:
	sbc			a,$FF
	ret			nc							;実質 zf=1 チェック

	ENDIF

	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;bc=2byte オフセット値を読み込む
	inc			hl

	IFNDEF	DATA_HAS_HEADERS

	ld			a,b
	or			c
	ret			z

	ENDIF

.litteral:
	ld			a,0							;litteral ここは書き換え
	and			$0F
	add			a,$04							;cf=0

	push		hl
	ld			h,d
	ld			l,e
	sbc			hl,bc						;hl=de-bc 既に展開したデータを転送元とする

	ld			b,0
	ld			c,a
	cp			$0F+$04
	ex			(sp),hl
	call		z,.getlength
	ex			(sp),hl

	ldir									;既に展開したデータのコピー転送
	pop			hl
	jp			.loop

.getlength:									;転送バイト長を（さらに）取得する bc=現在の転送量
	ld			a,(hl)
	inc			hl
	cp			$FF							;$FF は長さ情報が続くサインを兼ねる
	jr			nz,.addlen
	inc			b
	dec			bc							;bc += 255
	jr			.getlength
.addlen:
	add			a,c
	ld			c,a
	adc			a,b
	sub			c
	ld			b,a							;bc=転送バイト長
	ret

	end

;------------------------------------------------------------------------------
;in: hl=開始アドレス bc=長さ
;out: bcde=結果
crc32:
	push		hl
	push		bc

	ld			de,$FFFF				;ZIP で使われる CRC32 では 0xFFFFFFFF を初期値とする
	ld			h,d
	ld			l,e
	ld			c,$20					;短縮

	exx
	pop			hl
	dec			hl
	inc			h
	inc			l
	ld			b,l
	ld			c,h
	pop			hl
.loop1:
	ld			a,(hl)
	inc			hl
	exx

	xor			e
	ld			b,8
.loop2:
	srl			h
	rr			l
	rr			d
	rra
	jp			nc,.skip
	ld			e,a
	ld			a,h
	xor			$ED
	ld			h,a
	ld			a,l
	xor			$B8
	ld			l,a
	ld			a,d
	xor			$83
	ld			d,a
	ld			a,e
;	xor			$20
	xor			c
.skip:
	djnz		.loop2
	ld			e,a

	exx
	djnz		.loop1
	dec			c
	jp			nz,.loop1
	exx

	ld			a,h						;ZIP で使われる CRC32 では最後に 0xFFFFFFFF で xor を取る
	cpl
	ld			b,a
	ld			a,l
	cpl
	ld			c,a

	ld			a,d
	cpl
	ld			d,a
	ld			a,e
	cpl
	ld			e,a
	ret

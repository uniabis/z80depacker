;------------------------------------------------------------------------------
;hl=src de=dst
lz4decrunch:
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

	ld			b,0
	ld			ix,.loop

.loop:
	ld			a,(hl)
	ld			(.litteral+1),a
	inc			hl
	and			$F0
	jr			z,.copy						;長さ 0 なら既に転送済みのデータをコピー
	rrca
	rrca
	rrca
	rrca
	ld			c,a
	cp			$0F
	call		z,.getlength				;長さ $0F なら続けて追加の長さを取得する

	ldir									;長さ情報の次から転送開始

.copy:
	ld			a,l							;圧縮データが最終アドレスに達したかどうか
.endL:
	sub			$FF
	ld			a,h
.endH:
	sbc			a,$FF
	ret			nc							;実質 zf=1 チェック

	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;bc=2byte オフセット値を読み込む
	inc			hl

.litteral:
	ld			a,0							;litteral ここは書き換え
	and			$0F
	add			a,$04							;cf=0

	push		de
	ex			de,hl
	sbc			hl,bc						;hl=de-bc 既に展開したデータを転送元とする

	ld			b,0
	ld			c,a
	cp			$0F+$04
	ex			de,hl
	call		z,.getlength
	ex			(sp),hl
	ex			de,hl

	ldir									;既に展開したデータのコピー転送
	pop			hl
	jp			(ix)

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

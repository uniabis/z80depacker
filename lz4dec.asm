;------------------------------------------------------------------------------
;hl=src de=dst
lz4decrunch:

	IFDEF	DATA_HAS_HEADERS

	ld			bc,7
	add			hl,bc
	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;�w�b�_���� 2byte �T�C�Y���擾
	inc			hl
	inc			hl
	inc			hl							;+$0B ����W�J�J�n

	ld			a,l
	add			a,c
	ld			(.endL+1),a
	ld			a,h
	adc			a,b
	ld			(.endH+1),a					;���k�f�[�^�̏I�[�A�h���X

	ENDIF

.loop:
	ld			a,(hl)
	inc			hl
	ld			(.litteral+1),a
	and			$F0
	jr			z,.copy						;���� 0 �Ȃ���ɓ]���ς݂̃f�[�^���R�s�[
	rrca
	rrca
	rrca
	rrca
	ld			b,0
	ld			c,a
	cp			$0F
	call		z,.getlength				;���� $0F �Ȃ瑱���Ēǉ��̒������擾����

	ldir									;�������̎�����]���J�n

.copy:

	IFDEF	DATA_HAS_HEADERS

	ld			a,l							;���k�f�[�^���ŏI�A�h���X�ɒB�������ǂ���
.endL:
	sub			$FF
	ld			a,h
.endH:
	sbc			a,$FF
	ret			nc							;���� zf=1 �`�F�b�N

	ENDIF

	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;bc=2byte �I�t�Z�b�g�l��ǂݍ���
	inc			hl

	IFNDEF	DATA_HAS_HEADERS

	ld			a,b
	or			c
	ret			z

	ENDIF

.litteral:
	ld			a,0							;litteral �����͏�������
	and			$0F
	add			a,$04							;cf=0

	push		hl
	ld			h,d
	ld			l,e
	sbc			hl,bc						;hl=de-bc ���ɓW�J�����f�[�^��]�����Ƃ���

	ld			b,0
	ld			c,a
	cp			$0F+$04
	ex			(sp),hl
	call		z,.getlength
	ex			(sp),hl

	ldir									;���ɓW�J�����f�[�^�̃R�s�[�]��
	pop			hl
	jp			.loop

.getlength:									;�]���o�C�g�����i����Ɂj�擾���� bc=���݂̓]����
	ld			a,(hl)
	inc			hl
	cp			$FF							;$FF �͒�����񂪑����T�C�������˂�
	jr			nz,.addlen
	inc			b
	dec			bc							;bc += 255
	jr			.getlength
.addlen:
	add			a,c
	ld			c,a
	adc			a,b
	sub			c
	ld			b,a							;bc=�]���o�C�g��
	ret

	end

;------------------------------------------------------------------------------
;in: hl=�J�n�A�h���X bc=����
;out: bcde=����
crc32:
	push		hl
	push		bc

	ld			de,$FFFF				;ZIP �Ŏg���� CRC32 �ł� 0xFFFFFFFF �������l�Ƃ���
	ld			h,d
	ld			l,e
	ld			c,$20					;�Z�k

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

	ld			a,h						;ZIP �Ŏg���� CRC32 �ł͍Ō�� 0xFFFFFFFF �� xor �����
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

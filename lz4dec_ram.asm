;------------------------------------------------------------------------------
;hl=src de=dst
lz4decrunch:
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

	ld			b,0
	ld			ix,.loop

.loop:
	ld			a,(hl)
	ld			(.litteral+1),a
	inc			hl
	and			$F0
	jr			z,.copy						;���� 0 �Ȃ���ɓ]���ς݂̃f�[�^���R�s�[
	rrca
	rrca
	rrca
	rrca
	ld			c,a
	cp			$0F
	call		z,.getlength				;���� $0F �Ȃ瑱���Ēǉ��̒������擾����

	ldir									;�������̎�����]���J�n

.copy:
	ld			a,l							;���k�f�[�^���ŏI�A�h���X�ɒB�������ǂ���
.endL:
	sub			$FF
	ld			a,h
.endH:
	sbc			a,$FF
	ret			nc							;���� zf=1 �`�F�b�N

	ld			c,(hl)
	inc			hl
	ld			b,(hl)						;bc=2byte �I�t�Z�b�g�l��ǂݍ���
	inc			hl

.litteral:
	ld			a,0							;litteral �����͏�������
	and			$0F
	add			a,$04							;cf=0

	push		de
	ex			de,hl
	sbc			hl,bc						;hl=de-bc ���ɓW�J�����f�[�^��]�����Ƃ���

	ld			b,0
	ld			c,a
	cp			$0F+$04
	ex			de,hl
	call		z,.getlength
	ex			(sp),hl
	ex			de,hl

	ldir									;���ɓW�J�����f�[�^�̃R�s�[�]��
	pop			hl
	jp			(ix)

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

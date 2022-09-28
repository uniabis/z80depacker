@echo off

goto skip_debug

rem sjasmplus --raw=lzedec.bin lzedec.mac
rem sjasmplus --raw=lzedecr.bin lzedecR.mac

rem sjasmplus --raw=dehrust_hl.bin dehrust_hl.asm
rem sjasmplus --raw=dehrust_hlb.bin dehrust_hlb.asm

rem sjasmplus --raw=dzx7_lom_v1p1.bin dzx7_lom_v1p1.asm


rem sjasmplus --raw=deexo3__.bin deexo3__.asm 

rem sjasmplus --raw=deexo3.bin deexo3.asm 

rem sjasmplus --raw=aplib_z80.bin aplib_z80.z80
rem sjasmplus --raw=deexo_simple.bin deexo_simple.z80
rem sjasmplus --raw=exodecrunch.bin exodecrunch.z80

pause

exit

:skip_debug

rem ldir

sjasmplus --raw=ldir.bin ldir.asm

rem aplib

sjasmplus --raw=aplib247b.bin aplib247b.asm
sjasmplus --raw=aplib247b_180_fast.bin aplib247b_180_fast.asm
sjasmplus --raw=aplib247b_180_small.bin aplib247b_180_small.asm
sjasmplus --raw=aplib247b_180_minimal.bin aplib247b_180_minimal.asm
sjasmplus --raw=aplib156b.bin aplib156b.asm

sjasmplus --raw=unaplib_fast.bin unaplib_fast.asm
sjasmplus -DHD64180=1 --raw=unaplib_fast_180.bin unaplib_fast.asm
sjasmplus --raw=unaplib_small.bin unaplib_small.asm

rem Bitbuster1 / BitbusterExtreme

sjasmplus --raw=depack.bin depack.gen

sjasmplus --raw=debitbust.bin debitbust.asm
sjasmplus --raw=debitbustp1.bin debitbustp1.asm
sjasmplus --raw=debitbustp2.bin debitbustp2.asm

rem BitBuster2

sjasmplus -DDISABLE_BITBUSTER_BLOCKS=1 --raw=bitbuster.bin bitbuster.asm
sjasmplus -DDISABLE_BITBUSTER_BLOCKS=1 -DHD64180=1 --raw=bitbuster_180.bin bitbuster.asm
sjasmplus -DDISABLE_BITBUSTER_BLOCKS=1 -DBITBUSTER_OPTIMIZE_SPEED=1 --raw=bitbuster_speed.bin bitbuster.asm
sjasmplus -DDISABLE_BITBUSTER_BLOCKS=1 -DBITBUSTER_OPTIMIZE_SPEED=1 -DHD64180=1 --raw=bitbuster_speed_180.bin bitbuster.asm
if exist bitbuster.exp del bitbuster.exp

sjasmplus --raw=unbitbuster2.bin unbitbuster2.asm
sjasmplus -DBITBUSTER_OPTIMIZE_SPEED=1 --raw=unbitbuster2_speed.bin unbitbuster2.asm
sjasmplus -DBITBUSTER_OPTIMIZE_SPEED=2 --raw=unbitbuster2_speed2.bin unbitbuster2.asm

rem exomizer2

sjasmplus --raw=deexo.bin deexo.asm

sjasmplus --raw=deexo_180.bin deexo_180.asm

rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo_180_fast.bin deexo_180.asm

sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo_180_fast_jp.bin deexo_180.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=0 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p0.bin deexoopt_f3.asm

sjasmplus -DPFLAG_CODE=0 --raw=deexo3_p0.bin deexo3.asm 

rem exomizer3.0

sjasmplus --raw=deexo3p7.bin deexo3p7.asm 

sjasmplus --raw=deexo3.bin deexo3.asm 
rem sjasmplus --raw=deexo3__.bin deexo3__.asm 

rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo3p7_fast.bin deexo3p7.asm 

sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo3p7_fast_jp.bin deexo3p7.asm 

sjasmplus -Dbitsalignstart=0 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=3 --raw=deexoopt_p7.bin deexoopt.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 --raw=deexoopt_f3_p7.bin deexoopt_f3.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p7.bin deexoopt_f3.asm

sjasmplus -Dmapbase=0200h -Dliterals=1 -Dreuse=0 --raw=deexoopt_f3_fixed_p7.bin deexoopt_f3_fixed.asm

rem exomizer3.1

sjasmplus -DPFLAG_CODE=39 --raw=deexo3_p39.bin deexo3.asm 

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=39 -Dmapbase=0200h -Dliterals=1 --raw=deexoopt_f3_p39.bin deexoopt_f3.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=39 -Dmapbase=0200h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p39.bin deexoopt_f3.asm

sjasmplus -Dmapbase=0200h -Dliterals=1 -Dreuse=1 --raw=deexoopt_f3_fixed_p39.bin deexoopt_f3_fixed.asm

rem hrust

sjasmplus --raw=dehrust_ix.bin dehrust_ix.asm

sjasmplus --raw=dehrust_ix_231b.bin dehrust_ix_231b.asm

sjasmplus --raw=dehrust_hl.bin dehrust_hl.asm

sjasmplus --raw=dehrust_stk.bin dehrust_stk.asm

sjasmplus --raw=dehrust_stk_208b.bin dehrust_stk_208b.asm

rem hrust8

sjasmplus --raw=dehrust8_hl.bin dehrust8_hl.asm
sjasmplus --raw=dehrust8_hl_size.bin dehrust8_hl_size.asm

rem lz4

sjasmplus --raw=lz4dec.bin lz4dec.asm

sjasmplus --raw=unlz4_spke.bin unlz4_spke.asm 

sjasmplus --raw=unlz4_spke_fast.bin unlz4_spke_fast.asm 

sjasmplus --raw=unlz4_spke_small.bin unlz4_spke_small.asm 

rem lz48

sjasmplus --raw=lz48decrunch_v006_.bin lz48decrunch_v006_.asm

sjasmplus --raw=lz48decrunch_v006__180.bin lz48decrunch_v006__180.asm

rem lz49

sjasmplus --raw=lz49decrunch_v001.bin lz49decrunch_v001.asm

sjasmplus --raw=lz49decrunch_v001_180.bin lz49decrunch_v001_180.asm

rem lze

sjasmplus --raw=lzdec.bin lzdec.asm

sjasmplus --raw=dlze_fast.bin dlze_fast.asm
sjasmplus --raw=dlze_fast2.bin dlze_fast2.asm
sjasmplus --raw=dlze_small.bin dlze_small.asm

sjasmplus --raw=lzedec.bin lzedec.mac
sjasmplus --raw=lzedecr.bin lzedecR.mac

rem lzeee

sjasmplus --raw=dlzeee_fast.bin dlzeee_fast.asm
sjasmplus --raw=dlzeee_fast2.bin dlzeee_fast2.asm
sjasmplus --raw=dlzeee_fast3.bin dlzeee_fast3.asm
sjasmplus --raw=dlzeee_small.bin dlzeee_small.asm

rem lzexe

pasmo --equ OPTIMIZE=1 --bin z80unlze.asm z80unlze.bin
pasmo --equ OPTIMIZE=0 --bin z80unlze.asm z80unlze_small.bin

pasmo --equ OPTIMIZE=1 --bin z80unlzep2.asm z80unlzep2.bin
pasmo --equ OPTIMIZE=0 --bin z80unlzep2.asm z80unlzep2_small.bin

rem lzf

sjasmplus --raw=unlzf_small.bin unlzf_small.asm
sjasmplus --raw=unlzf_smallp1.bin unlzf_smallp1.asm
sjasmplus --raw=unlzf_fast.bin unlzf_fast.asm
sjasmplus --raw=unlzf_fastp1.bin unlzf_fastp1.asm

rem lzsa

sjasmplus --raw=unlzsa1_fast.bin unlzsa1_fast.asm

sjasmplus --raw=unlzsa1_small.bin unlzsa1_small.asm

sjasmplus --raw=unlzsa2_fast.bin unlzsa2_fast.asm

sjasmplus -DAVOID_SELFMODIFYING_CODE=2 --raw=unlzsa2_fast_rom.bin unlzsa2_fast.asm

sjasmplus --raw=unlzsa2_small.bin unlzsa2_small.asm

sjasmplus -DAVOID_SELFMODIFYING_CODE=1 --raw=unlzsa2_small_rom.bin unlzsa2_small.asm

rem megalz

sjasmplus --raw=megalz_dec40.bin megalz_dec40.asm

sjasmplus --raw=unmegalz_fast.bin unmegalz_fast.asm

sjasmplus --raw=unmegalz_small.bin unmegalz_small.asm

rem pletter

sjasmplus --raw=unpletter.bin unpletter.asm

sjasmplus -DHD64180=1 --raw=unpletter_180.bin unpletter_180.asm

rem rip

sjasmplus --raw=derip_fast.bin derip_fast.asm
sjasmplus --raw=derip_small.bin derip_small.asm
sjasmplus -DAVOID_SELFMODIFYING_CODE=1 --raw=derip_fast_rom.bin derip_fast_rom.asm
sjasmplus -DAVOID_SELFMODIFYING_CODE=1 --raw=derip_small_rom.bin derip_small_rom.asm

sjasmplus --raw=demrip_fast.bin demrip_fast.asm
sjasmplus --raw=demrip_faster.bin demrip_faster.asm
sjasmplus --raw=demrip_small.bin demrip_small.asm

rem shrinkler

sjasmplus --raw=shrinkler_recall_209.bin shrinkler_recall_209.asm

rem sjasmplus --raw=shrinkler_recall_209_r800_ram.bin shrinkler_recall_209_r800.asm
sjasmplus -DROM=1 --raw=shrinkler_recall_209_r800_rom.bin shrinkler_recall_209_r800.asm

sjasmplus --raw=deshrinkler.bin deshrinkler.asm

rem shrinkler(NP)

sjasmplus --raw=deshrink_np.bin deshrink_np.asm
sjasmplus -DROM=1 --raw=deshrink_np_r800.bin deshrink_np_r800.asm

sjasmplus --raw=deshrinkler_np.bin deshrinkler_np.asm

rem upkr

sjasmplus -DUPKR_PROBS_ORIGIN=$3000 -DUPKR_ALLOW_SELF_MODIFYING -DUPKR_UNPACK_SPEED --raw=unpack_upkr_speed.bin unpack_upkr.asm
sjasmplus -DUPKR_PROBS_ORIGIN=$3000 -DUPKR_ALLOW_SELF_MODIFYING --raw=unpack_upkr_size.bin unpack_upkr.asm
sjasmplus -DUPKR_PROBS_ORIGIN=$3000 -DUPKR_ALLOW_USE_IY -DUPKR_UNPACK_SPEED --raw=unpack_upkr_speed_rom.bin unpack_upkr.asm
sjasmplus -DUPKR_PROBS_ORIGIN=$3000 -DUPKR_ALLOW_USE_IY --raw=unpack_upkr_size_rom.bin unpack_upkr.asm

rem zx0

sjasmplus --raw=dzx0_mega.bin dzx0_mega.asm

sjasmplus --raw=dzx0_fast.bin dzx0_fast.asm

sjasmplus --raw=dzx0_fastrom.bin dzx0_fastrom.asm

sjasmplus -DHD64180=1 --raw=dzx0_fastrom_180.bin dzx0_fastrom.asm

sjasmplus --raw=dzx0_turbo.bin dzx0_turbo.asm

sjasmplus --raw=dzx0_standard.bin dzx0_standard.asm

rem zx1

sjasmplus --raw=dzx1_mega.bin dzx1_mega.asm

sjasmplus --raw=dzx1_turbo.bin dzx1_turbo.asm

sjasmplus --raw=dzx1_standard.bin dzx1_standard.asm

sjasmplus --raw=dzx1_turbo_ix.bin dzx1_turbo_ix.asm

sjasmplus -DHD64180=1 --raw=dzx1_turbo_ix_180.bin dzx1_turbo_ix.asm

sjasmplus --raw=dzx1_standard_ix.bin dzx1_standard_ix.asm

sjasmplus -DHD64180=1 --raw=dzx1_standard_ix_180.bin dzx1_standard_ix.asm


rem zx2

sjasmplus --raw=dzx2_nano.bin dzx2_nano.asm

rem zx5

sjasmplus --raw=dzx5_standard.bin dzx5_standard.asm
sjasmplus --raw=dzx5_turbo.bin dzx5_turbo.asm

rem zx7

sjasmplus --raw=dzx7_lom_v1.bin dzx7_lom_v1.asm

sjasmplus --raw=dzx7_lom_v1p1.bin dzx7_lom_v1p1.asm

sjasmplus --raw=dzx7_turbo.bin dzx7_turbo.asm

sjasmplus --raw=dzx7_standard.bin dzx7_standard.asm

rem zx7b

sjasmplus --raw=dzx7b_fast.bin dzx7b_fast.asm

sjasmplus -DR800=1 --raw=dzx7b_fast_r800.bin dzx7b_fast_r800.asm

sjasmplus --raw=dzx7b_slow.bin dzx7b_slow.asm

sjasmplus -DR800=1 --raw=dzx7b_slow_r800.bin dzx7b_slow_r800.asm

rem zx7mini

sjasmplus -DBACKWORD=1 --raw=dzx7mini.bin dzx7mini.asm

pause

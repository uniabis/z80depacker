@echo off



goto skip_debug

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

rem Bitbuster Extreme

sjasmplus --raw=debitbust.bin debitbust.asm
sjasmplus --raw=debitbustp1.bin debitbustp1.asm

rem exomizer2

sjasmplus --raw=deexo.bin deexo.asm

sjasmplus --raw=deexo_180.bin deexo_180.asm

rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo_180_fast.bin deexo_180.asm

sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo_180_fast_jp.bin deexo_180.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=0 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p0.bin deexoopt_f3.asm

rem exomizer3

sjasmplus --raw=deexo3p7.bin deexo3p7.asm 

sjasmplus --raw=deexo3.bin deexo3.asm 
rem sjasmplus --raw=deexo3__.bin deexo3__.asm 

rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo3p7_fast.bin deexo3p7.asm 

sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo3p7_fast_jp.bin deexo3p7.asm 

sjasmplus -Dbitsalignstart=0 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=3 --raw=deexoopt_p7.bin deexoopt.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 --raw=deexoopt_f3_p7.bin deexoopt_f3.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p7.bin deexoopt_f3.asm

rem hrust

sjasmplus --raw=dehrust_ix.bin dehrust_ix.asm

sjasmplus --raw=dehrust_ix_232b.bin dehrust_ix_232b.asm

sjasmplus --raw=dehrust_hl.bin dehrust_hl.asm

sjasmplus --raw=dehrust_stk.bin dehrust_stk.asm

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
sjasmplus --raw=dlze_small.bin dlze_small.asm

rem lzee

sjasmplus --raw=dlzee_fast.bin dlzee_fast.asm
sjasmplus --raw=dlzee_small.bin dlzee_small.asm

rem lzexe

pasmo --equ OPTIMIZE=1 --bin z80unlze.asm z80unlze.bin
pasmo --equ OPTIMIZE=0 --bin z80unlze.asm z80unlze_small.bin

pasmo --equ OPTIMIZE=1 --bin z80unlzep1.asm z80unlzep1.bin
pasmo --equ OPTIMIZE=0 --bin z80unlzep1.asm z80unlzep1_small.bin

rem lzsa

sjasmplus --raw=unlzsa1_fast.bin unlzsa1_fast.asm

sjasmplus --raw=unlzsa1_small.bin unlzsa1_small.asm

sjasmplus --raw=unlzsa2_fast.bin unlzsa2_fast.asm

sjasmplus -DHD64180=1 --raw=unlzsa2_fast_180.bin unlzsa2_fast.asm

sjasmplus --raw=unlzsa2_small.bin unlzsa2_small.asm

sjasmplus -DHD64180=1 --raw=unlzsa2_small_180.bin unlzsa2_small.asm

rem megalz

sjasmplus --raw=megalz_dec40.bin megalz_dec40.asm

sjasmplus --raw=unmegalz_fast_v2.bin unmegalz_fast_v2.asm

sjasmplus --raw=unmegalz_fast_v2p1.bin unmegalz_fast_v2p1.asm

sjasmplus --raw=unmegalz_small_v2.bin unmegalz_small_v2.asm

rem pletter

sjasmplus --raw=unpletter.bin unpletter.asm

sjasmplus -DHD64180=1 --raw=unpletter_180.bin unpletter_180.asm

rem shrinkler

sjasmplus --raw=shrinkler_recall_209.bin shrinkler_recall_209.asm

rem sjasmplus --raw=shrinkler_recall_209_r800_ram.bin shrinkler_recall_209_r800.asm
sjasmplus -DROM=1 --raw=shrinkler_recall_209_r800_rom.bin shrinkler_recall_209_r800.asm


rem shrinkler(NP)

sjasmplus --raw=deshrink_np.bin deshrink_np.asm
sjasmplus -DROM=1 --raw=deshrink_np_r800.bin deshrink_np_r800.asm

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

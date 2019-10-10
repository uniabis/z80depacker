@echo off

goto skip_debug

sjasmplus --raw=dlze_fast.bin dlze_fast.asm
sjasmplus --raw=dlze_small.bin dlze_small.asm

sjasmplus --raw=dlzee_fast.bin dlzee_fast.asm
sjasmplus --raw=dlzee_small.bin dlzee_small.asm


pause

exit

sjasm deexo3.asm deexo3.bin
del deexo3.lst

sjasmplus -Dbitsalignstart=0 -Dmapbase=0100h -Dliterals=1 --raw=deexoopt_f3_p7.bin deexoopt_f3.asm


:skip_debug

goto skip_deexoopt

sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=1 -Dspeed=0 --raw=do3lbs0.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=1 -Dspeed=1 --raw=do3lbs1.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=1 -Dspeed=2 --raw=do3lbs2.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=1 -Dspeed=3 --raw=do3lbs3.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=0 --raw=do3lfs0.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=1 --raw=do3lfs1.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=2 --raw=do3lfs2.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=3 --raw=do3lfs3.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=1 -Dspeed=0 --raw=do3nbs0.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=1 -Dspeed=1 --raw=do3nbs1.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=1 -Dspeed=2 --raw=do3nbs2.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=1 -Dspeed=3 --raw=do3nbs3.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=0 -Dspeed=0 --raw=do3nfs0.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=0 -Dspeed=1 --raw=do3nfs1.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=0 -Dspeed=2 --raw=do3nfs2.bin deexoopt.asm
sjasmplus -Dbitsalignstart=1 -Dmapbase=0100h -Dliterals=0 -Dback=0 -Dspeed=3 --raw=do3nfs3.bin deexoopt.asm

pause

exit

:skip_deexoopt

rem ldir

sjasmplus --raw=ldir.bin ldir.asm


rem exomizer2

sjasm deexo.asm deexo.bin
del deexo.lst

sjasmplus --raw=deexo_180.bin deexo_180.asm
rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo_180_fast.bin deexo_180.asm
sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo_180_fast_jp.bin deexo_180.asm
sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=0 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p0.bin deexoopt_f3.asm

rem exomizer3

sjasmplus --raw=deexo3p7.bin deexo3p7.asm 
rem sjasmplus -DINLINE_GETBIT=1 --raw=deexo3p7_fast.bin deexo3p7.asm 
sjasmplus -DINLINE_GETBIT=1 -DOPTIMIZE_JUMP=1 --raw=deexo3p7_fast_jp.bin deexo3p7.asm 

sjasm deexo3.asm deexo3.bin
del deexo3.lst

sjasmplus -Dbitsalignstart=0 -Dmapbase=0100h -Dliterals=1 -Dback=0 -Dspeed=3 --raw=deexoopt_p7.bin deexoopt.asm

sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 --raw=deexoopt_f3_p7.bin deexoopt_f3.asm
sjasmplus -DOPTIMIZE_JUMP=1 -DPFLAG_CODE=7 -Dmapbase=0100h -Dliterals=1 -DHD64180=1 --raw=deexoopt_f3_180_p7.bin deexoopt_f3.asm

rem hrust

sjasm dehrust_ix.asm dehrust_ix.bin
del dehrust_ix.lst

sjasm dehrust_stk.asm dehrust_stk.bin
del dehrust_stk.lst

rem sjasmplus -DINLINE_GETBIT=1 --raw=unhrust.bin unhrust.asm
rem sjasmplus -DINLINE_GETBIT=1 --lst=unhrust.lst --raw=unhrust.bin unhrust.asm

rem zx7

sjasmplus --raw=dzx7_lom_v1.bin dzx7_lom_v1.asm
sjasmplus --raw=dzx7_mega.bin dzx7_mega.asm
sjasmplus --raw=dzx7_turbo.bin dzx7_turbo.asm
sjasmplus --raw=dzx7_standard.bin dzx7_standard.asm

rem zx7b

sjasm dzx7b_fast.asm dzx7b_fast.bin
del dzx7b_fast.lst

sjasmplus -DR800=1 --raw=dzx7b_fast_r800.bin dzx7b_fast_r800.asm

sjasm dzx7b_slow.asm dzx7b_slow.bin
del dzx7b_slow.lst

sjasmplus -DR800=1 --raw=dzx7b_slow_r800.bin dzx7b_slow_r800.asm

rem zx7mini

sjasmplus -DBACKWORD=1 --raw=dzx7mini.bin dzx7mini.asm

rem lz48

sjasm lz48decrunch_v006.asm lz48decrunch_v006.bin
del lz48decrunch_v006.lst

sjasm lz48decrunch_v006_.asm lz48decrunch_v006_.bin
del lz48decrunch_v006_.lst

sjasm lz48decrunch_v006__180.asm lz48decrunch_v006__180.bin
del lz48decrunch_v006__180.lst

rem lz49

sjasm lz49decrunch_v001.asm lz49decrunch_v001.bin
del lz49decrunch_v001.lst

sjasm lz49decrunch_v001_180.asm lz49decrunch_v001_180.bin
del lz49decrunch_v001_180.lst

rem lz4

sjasm lz4dec.asm lz4dec.bin
del lz4dec.lst

sjasmplus --raw=lz4dec_ram.bin lz4dec_rom.asm 

sjasmplus -DROM=1 --raw=lz4dec_rom.bin lz4dec_rom.asm 

sjasmplus --raw=unlz4_stephenw32768.bin unlz4_stephenw32768.asm 
sjasmplus --raw=unlz4_drapich.bin unlz4_drapich.asm 
sjasmplus --raw=unlz4_spke.bin unlz4_spke.asm 
sjasmplus --raw=unlz4_spke_fast.bin unlz4_spke_fast.asm 
sjasmplus --raw=unlz4_spke_small.bin unlz4_spke_small.asm 




rem lze

sjasm lzdec.asm lzdec.bin
del lzdec.lst

sjasm lzdec_104.asm lzdec_104.bin
del lzdec_104.lst

sjasmplus --raw=dlze_fast.bin dlze_fast.asm
sjasmplus --raw=dlze_small.bin dlze_small.asm

rem lzee

sjasm lzee_dec_area.asm lzee_dec_area.bin
del lzee_dec_area.lst

sjasm lzee_dec_speed.asm lzee_dec_speed.bin
del lzee_dec_speed.lst

sjasmplus --raw=dlzee_fast.bin dlzee_fast.asm
sjasmplus --raw=dlzee_small.bin dlzee_small.asm

rem megalz

sjasm megalz_dec40.asm megalz_dec40.bin
del megalz_dec40.lst


sjasmplus --raw=unmegalz_fast_v2.bin unmegalz_fast_v2.asm
sjasmplus --raw=unmegalz_small_v2.bin unmegalz_small_v2.asm

rem shrinkler

sjasm shrinkler_recall_209.asm shrinkler_recall_209.bin
del shrinkler_recall_209.lst

rem sjasmplus --raw=shrinkler_recall_209_r800_ram.bin shrinkler_recall_209_r800.asm
sjasmplus --raw=shrinkler_recall_209_r800_rom.bin -DROM=1 shrinkler_recall_209_r800.asm

rem lzsa

sjasmplus --raw=unlzsa1_fast.bin unlzsa1_fast.asm

sjasmplus --raw=unlzsa1_small.bin unlzsa1_small.asm

sjasmplus -DHD64180=1 --raw=unlzsa2_fast_180.bin unlzsa2_fast.asm

sjasmplus --raw=unlzsa2_fast.bin unlzsa2_fast.asm

sjasmplus -DHD64180=1 --raw=unlzsa2_small_180.bin unlzsa2_small.asm

sjasmplus --raw=unlzsa2_small.bin unlzsa2_small.asm

rem pletter

sjasm unpletter.asm unpletter.bin
del unpletter.lst

sjasmplus -DHD64180=1 --raw=unpletter_180.bin unpletter_180.asm

rem aplib

sjasmplus --raw=aplib247b.bin aplib247b.asm
sjasmplus --raw=aplib247b_180_fast.bin aplib247b_180_fast.asm
sjasmplus --raw=aplib247b_180_small.bin aplib247b_180_small.asm

pause

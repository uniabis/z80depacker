
# Depackers for Z80

## Packers

### [Exomizer2](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P0)

License:LGPL

### [Exomizer3](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P7)

License:LGPL

[deexoopt](https://github.com/antoniovillena/deexo)

### hruST - [oh1c spke version](http://hypr.ru/blog/dev/740.html) 1.3 (-r)

[mhmt](https://github.com/lvd2/mhmt) License:GPLv3
[mhmt google code archive](https://code.google.com/archive/p/mhmt/source/default/source)
[oh1c](https://zx-pk.ru/threads/23111-szhatie-i-upakovka-hrum3-5-hrust1-hrust2-laser-compact-x-x.html?p=787697&viewfull=1#post787697)
[oh1c spke version with raw format support](http://hypr.ru/blog/dev/740.html) in [compression2017.7z](http://introspec.retroscene.org/hype/compression2017.7z)

### [LZ4](https://github.com/lz4/lz4) - [lz4ultra](https://github.com/emmanuel-marty/lz4ultra) v1.2.2

[lz4stream for Z80](http://mydocuments.g2.xrea.com/html/p6/randd.html)
[lz4ultra](https://github.com/emmanuel-marty/lz4ultra)
[smallz4](https://create.stephan-brumme.com/smallz4/)

### [LZ48/49](http://www.cpcwiki.eu/forum/programming/lz48-cruncherdecruncher/)

### [LZE](http://gorry.haun.org/pw/?lze) 20080228a

[LZEe - LZE enhancement for z80](https://github.com/uniabis/lzee)

### [lzsa1](https://github.com/emmanuel-marty/lzsa) 1.0.8(-f1 -r)

License:zlib

### [lzsa2](https://github.com/emmanuel-marty/lzsa) 1.0.8(-f2 -r)

License:zlib

### MegaLZ v4.89

[unmegalz](http://hype.retroscene.org/blog/933.html)

### [Pletter](http://www.xl2s.tk/) v0.5c1

License:Mit

### [Shrinkler](https://github.com/askeksa/Shrinkler) v4.5(-d -9)

[Shrinkler Z80](https://cpcrulez.fr/applications_tools_cruncher_shrinkler_Z80.htm)

### [zx7](http://www.worldofspectrum.org/infoseekid.cgi?id=0027996)

### [zx7b](https://github.com/antoniovillena/zx7b) v1.01

License:CC-BY-SA

## Compressed size



test data:DEOCM-PLD-CV BIOS(16x16KB)

|SectionName|Exomizer2<br />(-P0)|Exomizer3<br />(-P7)|hrust<br />(oh1c)|lz4<br />(lz4ultra)|lz48|lz49|lze|lzee|lzsa1|lzsa2|megalz|pletter|shrinkler|zx7b|zx7|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|MEGASDHC.B00|9,373<br />(57.21%)|9,373<br />(57.21%)|9,369<br />(57.18%)|10,834<br />(66.13%)|10,717<br />(65.41%)|10,628<br />(64.87%)|10,092<br />(61.60%)|10,088<br />(61.57%)|10,339<br />(63.10%)|9,726<br />(59.36%)|9,718<br />(59.31%)|9,706<br />(59.24%)|8,984<br />(54.83%)|9,762<br />(59.58%)|9,781<br />(59.70%)|
|MEGASDHC.B01|4,902<br />(29.92%)|4,902<br />(29.92%)|4,895<br />(29.88%)|5,796<br />(35.38%)|5,752<br />(35.11%)|5,559<br />(33.93%)|5,463<br />(33.34%)|5,459<br />(33.32%)|5,392<br />(32.91%)|5,122<br />(31.26%)|5,124<br />(31.27%)|5,083<br />(31.02%)|4,680<br />(28.56%)|5,091<br />(31.07%)|5,080<br />(31.01%)|
|MEGASDHC.B02|12,494<br />(76.26%)|12,494<br />(76.26%)|12,563<br />(76.68%)|14,743<br />(89.98%)|14,588<br />(89.04%)|14,512<br />(88.57%)|13,472<br />(82.23%)|13,468<br />(82.20%)|14,044<br />(85.72%)|13,180<br />(80.44%)|12,965<br />(79.13%)|12,945<br />(79.01%)|12,148<br />(74.15%)|13,103<br />(79.97%)|13,104<br />(79.98%)|
|MEGASDHC.B03|12,297<br />(75.05%)|12,297<br />(75.05%)|12,282<br />(74.96%)|14,290<br />(87.22%)|14,250<br />(86.98%)|14,030<br />(85.63%)|13,187<br />(80.49%)|13,183<br />(80.46%)|13,703<br />(83.64%)|12,857<br />(78.47%)|12,660<br />(77.27%)|12,700<br />(77.51%)|11,916<br />(72.73%)|12,810<br />(78.19%)|12,784<br />(78.03%)|
|MSX2MAIN.B00|12,740<br />(77.76%)|12,739<br />(77.75%)|12,768<br />(77.93%)|14,837<br />(90.56%)|14,268<br />(87.08%)|14,196<br />(86.65%)|13,698<br />(83.61%)|13,694<br />(83.58%)|14,087<br />(85.98%)|13,347<br />(81.46%)|13,072<br />(79.79%)|13,205<br />(80.60%)|12,276<br />(74.93%)|13,248<br />(80.86%)|13,224<br />(80.71%)|
|MSX2MAIN.B01|13,402<br />(81.80%)|13,402<br />(81.80%)|13,454<br />(82.12%)|15,448<br />(94.29%)|15,305<br />(93.41%)|15,254<br />(93.10%)|14,389<br />(87.82%)|14,385<br />(87.80%)|14,892<br />(90.89%)|14,094<br />(86.02%)|13,917<br />(84.94%)|13,909<br />(84.89%)|13,100<br />(79.96%)|14,002<br />(85.46%)|14,021<br />(85.58%)|
|MSXMUSIC.B00|10,068<br />(61.45%)|10,068<br />(61.45%)|10,079<br />(61.52%)|11,632<br />(71.00%)|12,121<br />(73.98%)|11,980<br />(73.12%)|10,830<br />(66.10%)|10,826<br />(66.08%)|11,049<br />(67.44%)|10,396<br />(63.45%)|10,407<br />(63.52%)|10,466<br />(63.88%)|9,536<br />(58.20%)|10,495<br />(64.06%)|10,515<br />(64.18%)|
|MSX2EXT.B00|12,351<br />(75.38%)|12,351<br />(75.38%)|12,331<br />(75.26%)|14,578<br />(88.98%)|14,074<br />(85.90%)|13,969<br />(85.26%)|13,303<br />(81.20%)|13,299<br />(81.17%)|13,719<br />(83.73%)|12,862<br />(78.50%)|12,833<br />(78.33%)|12,858<br />(78.48%)|11,820<br />(72.14%)|12,964<br />(79.13%)|12,943<br />(79.00%)|
|KANJJ1.B00|6,097<br />(37.21%)|6,097<br />(37.21%)|6,434<br />(39.27%)|8,089<br />(49.37%)|8,167<br />(49.85%)|7,824<br />(47.75%)|7,027<br />(42.89%)|7,023<br />(42.86%)|7,317<br />(44.66%)|6,509<br />(39.73%)|6,514<br />(39.76%)|6,511<br />(39.74%)|5,728<br />(34.96%)|6,591<br />(40.23%)|6,532<br />(39.87%)|
|KANJJ1.B01|3,975<br />(24.26%)|3,974<br />(24.26%)|4,230<br />(25.82%)|5,431<br />(33.15%)|5,532<br />(33.76%)|5,240<br />(31.98%)|4,664<br />(28.47%)|4,660<br />(28.44%)|4,805<br />(29.33%)|4,293<br />(26.20%)|4,320<br />(26.37%)|4,269<br />(26.06%)|3,700<br />(22.58%)|4,424<br />(27.00%)|4,401<br />(26.86%)|
|KANJJ1.B02|10,688<br />(65.23%)|10,688<br />(65.23%)|10,940<br />(66.77%)|13,003<br />(79.36%)|14,290<br />(87.22%)|13,985<br />(85.36%)|11,696<br />(71.39%)|11,692<br />(71.36%)|12,544<br />(76.56%)|11,396<br />(69.56%)|11,362<br />(69.35%)|11,340<br />(69.21%)|10,212<br />(62.33%)|11,629<br />(70.98%)|11,623<br />(70.94%)|
|KANJJ1.B03|10,510<br />(64.15%)|10,509<br />(64.14%)|10,753<br />(65.63%)|12,732<br />(77.71%)|14,024<br />(85.60%)|13,761<br />(83.99%)|11,493<br />(70.15%)|11,489<br />(70.12%)|12,253<br />(74.79%)|11,137<br />(67.97%)|11,161<br />(68.12%)|11,105<br />(67.78%)|10,020<br />(61.16%)|11,451<br />(69.89%)|11,436<br />(69.80%)|
|KANJJ1.B04|10,415<br />(63.57%)|10,415<br />(63.57%)|10,679<br />(65.18%)|12,675<br />(77.36%)|13,960<br />(85.21%)|13,717<br />(83.72%)|11,373<br />(69.42%)|11,369<br />(69.39%)|12,190<br />(74.40%)|11,039<br />(67.38%)|11,016<br />(67.24%)|10,992<br />(67.09%)|9,876<br />(60.28%)|11,327<br />(69.13%)|11,337<br />(69.20%)|
|KANJJ1.B05|10,348<br />(63.16%)|10,347<br />(63.15%)|10,597<br />(64.68%)|12,535<br />(76.51%)|13,952<br />(85.16%)|13,674<br />(83.46%)|11,283<br />(68.87%)|11,279<br />(68.84%)|12,075<br />(73.70%)|10,933<br />(66.73%)|11,012<br />(67.21%)|10,908<br />(66.58%)|9,808<br />(59.86%)|11,341<br />(69.22%)|11,331<br />(69.16%)|
|KANJJ1.B06|10,650<br />(65.00%)|10,650<br />(65.00%)|10,906<br />(66.56%)|12,975<br />(79.19%)|14,179<br />(86.54%)|13,920<br />(84.96%)|11,634<br />(71.01%)|11,630<br />(70.98%)|12,508<br />(76.34%)|11,358<br />(69.32%)|11,281<br />(68.85%)|11,252<br />(68.68%)|10,148<br />(61.94%)|11,601<br />(70.81%)|11,612<br />(70.87%)|
|KANJJ1.B07|9,701<br />(59.21%)|9,701<br />(59.21%)|9,937<br />(60.65%)|11,831<br />(72.21%)|13,048<br />(79.64%)|12,778<br />(77.99%)|10,578<br />(64.56%)|10,574<br />(64.54%)|11,389<br />(69.51%)|10,343<br />(63.13%)|10,247<br />(62.54%)|10,245<br />(62.53%)|9,212<br />(56.23%)|10,586<br />(64.61%)|10,572<br />(64.53%)|
|ALL|160,011<br />(61.04%)|160,007<br />(61.04%)|162,217<br />(61.88%)|191,429<br />(73.02%)|198,227<br />(75.62%)|195,027<br />(74.40%)|174,182<br />(66.45%)|174,118<br />(66.42%)|182,306<br />(69.54%)|168,592<br />(64.31%)|167,609<br />(63.94%)|167,494<br />(63.89%)|153,164<br />(58.43%)|170,425<br />(65.01%)|170,296<br />(64.96%)|



## Decompression speed



test data:ALL(16*16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|        160,011<br />(61.03%)|    108,490,817<br />(LDIR x 17.9)|
|Exomizer2|deexo_180|            166|        160,011<br />(61.03%)|    108,490,229<br />(LDIR x 17.9)|
|Exomizer2|deexo_180_fast_jp|            176|        160,011<br />(61.03%)|     92,969,945<br />(LDIR x 15.4)|
|Exomizer2|deexoopt_f3_180_p0|            242|        160,011<br />(61.03%)|     74,159,660<br />(LDIR x 12.2)|
|Exomizer3|deexo3p7|            176|        160,007<br />(61.03%)|     82,034,254<br />(LDIR x 13.6)|
|Exomizer3|deexo3p7_fast_jp|            181|        160,007<br />(61.03%)|     70,324,722<br />(LDIR x 11.6)|
|Exomizer3|deexo3|            197|        160,007<br />(61.03%)|     73,567,920<br />(LDIR x 12.2)|
|Exomizer3|deexoopt_p7|            219|        160,007<br />(61.03%)|     63,745,458<br />(LDIR x 10.5)|
|Exomizer3|deexoopt_f3_p7|            212|        160,007<br />(61.03%)|     61,265,322<br />(LDIR x 10.1)|
|Exomizer3|deexoopt_f3_180_p7|            219|        160,007<br />(61.03%)|     63,774,934<br />(LDIR x 10.5)|
|hrust|dehrust_ix|            234|        162,217<br />(61.88%)|     45,520,962<br />(LDIR x 7.5)|
|hrust|dehrust_stk|            209|        162,217<br />(61.88%)|     41,277,317<br />(LDIR x 6.8)|
|lz4|lz4dec|             97|        191,429<br />(73.02%)|     10,748,650<br />(LDIR x 1.7)|
|lz4|lz4dec_ram|            100|        191,429<br />(73.02%)|     10,406,642<br />(LDIR x 1.7)|
|lz4|lz4dec_rom|            100|        191,429<br />(73.02%)|     10,558,412<br />(LDIR x 1.7)|
|lz4|unlz4_stephenw32768|             72|        191,429<br />(73.02%)|     10,354,824<br />(LDIR x 1.7)|
|lz4|unlz4_drapich|            251|        191,429<br />(73.02%)|     10,182,719<br />(LDIR x 1.6)|
|lz4|unlz4_spke|            103|        191,429<br />(73.02%)|      9,911,253<br />(LDIR x 1.6)|
|lz4|unlz4_spke_ur|            100|        191,429<br />(73.02%)|      9,683,958<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006|             84|        198,227<br />(75.61%)|     10,096,491<br />(LDIR x 1.6)|
|lz48|lz48decrunch\_v006\_|             70|        198,227<br />(75.61%)|      9,987,125<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006__180|             74|        198,227<br />(75.61%)|      9,880,129<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001|            106|        195,027<br />(74.39%)|     11,349,204<br />(LDIR x 1.8)|
|lz49|lz49decrunch_v001_180|            108|        195,027<br />(74.39%)|     11,090,211<br />(LDIR x 1.8)|
|lze|lzdec|            119|        174,182<br />(66.44%)|     21,831,226<br />(LDIR x 3.6)|
|lze|lzdec_104|            104|        174,182<br />(66.44%)|     20,141,132<br />(LDIR x 3.3)|
|lzee|lzee_dec_area|             88|        174,118<br />(66.42%)|     25,615,019<br />(LDIR x 4.2)|
|lzee|lzee_dec_speed|            102|        174,118<br />(66.42%)|     19,569,112<br />(LDIR x 3.2)|
|lzsa1|unlzsa1_fast_v1|            111|        182,306<br />(69.54%)|     10,243,519<br />(LDIR x 1.6)|
|lzsa1|unlzsa1_small_v1|             68|        182,306<br />(69.54%)|     11,324,412<br />(LDIR x 1.8)|
|lzsa2|unlzsa2_fast_v1|            214|        168,592<br />(64.31%)|     16,186,846<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_fast_v1_180|            212|        168,592<br />(64.31%)|     16,457,518<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_small_v1|            140|        168,592<br />(64.31%)|     18,218,670<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_small_v1_180|            138|        168,592<br />(64.31%)|     18,489,342<br />(LDIR x 3.0)|
|MegaLZ|megalz_dec40|            110|        167,609<br />(63.93%)|     45,653,296<br />(LDIR x 7.5)|
|MegaLZ|unmegalz_fast_v2|            233|        167,609<br />(63.93%)|     20,775,177<br />(LDIR x 3.4)|
|MegaLZ|unmegalz_small_v2|             92|        167,609<br />(63.93%)|     32,642,661<br />(LDIR x 5.4)|
|Pletter|unpletter|            170|        167,494<br />(63.89%)|     28,812,190<br />(LDIR x 4.7)|
|Pletter|unpletter_180|            169|        167,494<br />(63.89%)|     28,746,568<br />(LDIR x 4.7)|
|Shrinkler|shrinkler_recall_209|            209|        153,164<br />(58.42%)|  2,648,153,963<br />(LDIR x 439.2)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|        153,164<br />(58.42%)|  2,638,632,095<br />(LDIR x 437.6)|
|zx7|dzx7_lom_v1|            214|        170,296<br />(64.96%)|     23,446,544<br />(LDIR x 3.8)|
|zx7|dzx7_mega|            244|        170,296<br />(64.96%)|     24,827,051<br />(LDIR x 4.1)|
|zx7|dzx7_turbo|             88|        170,296<br />(64.96%)|     27,346,595<br />(LDIR x 4.5)|
|zx7|dzx7_standard|             69|        170,296<br />(64.96%)|     36,700,476<br />(LDIR x 6.0)|
|zx7b|dzx7b_fast|            191|        170,425<br />(65.01%)|     20,907,617<br />(LDIR x 3.4)|
|zx7b|dzx7b_fast_r800|            191|        170,425<br />(65.01%)|     20,907,617<br />(LDIR x 3.4)|
|zx7b|dzx7b_slow|             64|        170,425<br />(65.01%)|     33,688,687<br />(LDIR x 5.5)|
|zx7b|dzx7b_slow_r800|             64|        170,425<br />(65.01%)|     33,688,687<br />(LDIR x 5.5)|



test data:MEGASDHC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|          9,373<br />(57.20%)|      5,908,411<br />(LDIR x 15.6)|
|Exomizer2|deexo_180|            166|          9,373<br />(57.20%)|      5,908,329<br />(LDIR x 15.6)|
|Exomizer2|deexo_180_fast_jp|            176|          9,373<br />(57.20%)|      5,079,716<br />(LDIR x 13.4)|
|Exomizer2|deexoopt_f3_180_p0|            242|          9,373<br />(57.20%)|      4,050,659<br />(LDIR x 10.7)|
|Exomizer3|deexo3p7|            176|          9,373<br />(57.20%)|      4,644,675<br />(LDIR x 12.3)|
|Exomizer3|deexo3p7_fast_jp|            181|          9,373<br />(57.20%)|      3,984,529<br />(LDIR x 10.5)|
|Exomizer3|deexo3|            197|          9,373<br />(57.20%)|      4,161,356<br />(LDIR x 11.0)|
|Exomizer3|deexoopt_p7|            219|          9,373<br />(57.20%)|      3,567,353<br />(LDIR x 9.4)|
|Exomizer3|deexoopt_f3_p7|            212|          9,373<br />(57.20%)|      3,426,942<br />(LDIR x 9.0)|
|Exomizer3|deexoopt_f3_180_p7|            219|          9,373<br />(57.20%)|      3,568,294<br />(LDIR x 9.4)|
|hrust|dehrust_ix|            234|          9,369<br />(57.18%)|      2,390,975<br />(LDIR x 6.3)|
|hrust|dehrust_stk|            209|          9,369<br />(57.18%)|      2,152,604<br />(LDIR x 5.7)|
|lz4|lz4dec|             97|         10,834<br />(66.12%)|        554,626<br />(LDIR x 1.4)|
|lz4|lz4dec_ram|            100|         10,834<br />(66.12%)|        542,082<br />(LDIR x 1.4)|
|lz4|lz4dec_rom|            100|         10,834<br />(66.12%)|        547,517<br />(LDIR x 1.4)|
|lz4|unlz4_stephenw32768|             72|         10,834<br />(66.12%)|        540,542<br />(LDIR x 1.4)|
|lz4|unlz4_drapich|            251|         10,834<br />(66.12%)|        533,171<br />(LDIR x 1.4)|
|lz4|unlz4_spke|            103|         10,834<br />(66.12%)|        521,055<br />(LDIR x 1.3)|
|lz4|unlz4_spke_ur|            100|         10,834<br />(66.12%)|        512,925<br />(LDIR x 1.3)|
|lz48|lz48decrunch_v006|             84|         10,717<br />(65.41%)|        562,276<br />(LDIR x 1.4)|
|lz48|lz48decrunch\_v006\_|             70|         10,717<br />(65.41%)|        557,554<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006__180|             74|         10,717<br />(65.41%)|        552,447<br />(LDIR x 1.4)|
|lz49|lz49decrunch_v001|            106|         10,628<br />(64.86%)|        608,577<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001_180|            108|         10,628<br />(64.86%)|        596,620<br />(LDIR x 1.5)|
|lze|lzdec|            119|         10,092<br />(61.59%)|      1,213,495<br />(LDIR x 3.2)|
|lze|lzdec_104|            104|         10,092<br />(61.59%)|      1,132,145<br />(LDIR x 3.0)|
|lzee|lzee_dec_area|             88|         10,088<br />(61.57%)|      1,461,777<br />(LDIR x 3.8)|
|lzee|lzee_dec_speed|            102|         10,088<br />(61.57%)|      1,112,077<br />(LDIR x 2.9)|
|lzsa1|unlzsa1_fast_v1|            111|         10,339<br />(63.10%)|        551,557<br />(LDIR x 1.4)|
|lzsa1|unlzsa1_small_v1|             68|         10,339<br />(63.10%)|        596,070<br />(LDIR x 1.5)|
|lzsa2|unlzsa2_fast_v1|            214|          9,726<br />(59.36%)|        859,253<br />(LDIR x 2.2)|
|lzsa2|unlzsa2_fast_v1_180|            212|          9,726<br />(59.36%)|        871,837<br />(LDIR x 2.3)|
|lzsa2|unlzsa2_small_v1|            140|          9,726<br />(59.36%)|        958,144<br />(LDIR x 2.5)|
|lzsa2|unlzsa2_small_v1_180|            138|          9,726<br />(59.36%)|        970,728<br />(LDIR x 2.5)|
|MegaLZ|megalz_dec40|            110|          9,718<br />(59.31%)|      2,363,816<br />(LDIR x 6.2)|
|MegaLZ|unmegalz_fast_v2|            233|          9,718<br />(59.31%)|      1,089,557<br />(LDIR x 2.8)|
|MegaLZ|unmegalz_small_v2|             92|          9,718<br />(59.31%)|      1,677,063<br />(LDIR x 4.4)|
|Pletter|unpletter|            170|          9,706<br />(59.24%)|      1,459,575<br />(LDIR x 3.8)|
|Pletter|unpletter_180|            169|          9,706<br />(59.24%)|      1,456,713<br />(LDIR x 3.8)|
|Shrinkler|shrinkler_recall_209|            209|          8,984<br />(54.83%)|    147,898,055<br />(LDIR x 392.4)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          8,984<br />(54.83%)|    147,258,984<br />(LDIR x 390.7)|
|zx7|dzx7_lom_v1|            214|          9,781<br />(59.69%)|      1,204,254<br />(LDIR x 3.1)|
|zx7|dzx7_mega|            244|          9,781<br />(59.69%)|      1,270,559<br />(LDIR x 3.3)|
|zx7|dzx7_turbo|             88|          9,781<br />(59.69%)|      1,401,087<br />(LDIR x 3.7)|
|zx7|dzx7_standard|             69|          9,781<br />(59.69%)|      1,850,393<br />(LDIR x 4.9)|
|zx7b|dzx7b_fast|            191|          9,762<br />(59.58%)|      1,088,297<br />(LDIR x 2.8)|
|zx7b|dzx7b_fast_r800|            191|          9,762<br />(59.58%)|      1,088,297<br />(LDIR x 2.8)|
|zx7b|dzx7b_slow|             64|          9,762<br />(59.58%)|      1,718,914<br />(LDIR x 4.5)|
|zx7b|dzx7b_slow_r800|             64|          9,762<br />(59.58%)|      1,718,914<br />(LDIR x 4.5)|



test data:MEGASDHC.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|          4,902<br />(29.91%)|      3,307,149<br />(LDIR x 8.7)|
|Exomizer2|deexo_180|            166|          4,902<br />(29.91%)|      3,307,019<br />(LDIR x 8.7)|
|Exomizer2|deexo_180_fast_jp|            176|          4,902<br />(29.91%)|      2,874,744<br />(LDIR x 7.6)|
|Exomizer2|deexoopt_f3_180_p0|            242|          4,902<br />(29.91%)|      2,332,339<br />(LDIR x 6.1)|
|Exomizer3|deexo3p7|            176|          4,902<br />(29.91%)|      2,759,609<br />(LDIR x 7.3)|
|Exomizer3|deexo3p7_fast_jp|            181|          4,902<br />(29.91%)|      2,382,976<br />(LDIR x 6.3)|
|Exomizer3|deexo3|            197|          4,902<br />(29.91%)|      2,483,633<br />(LDIR x 6.5)|
|Exomizer3|deexoopt_p7|            219|          4,902<br />(29.91%)|      2,155,892<br />(LDIR x 5.7)|
|Exomizer3|deexoopt_f3_p7|            212|          4,902<br />(29.91%)|      2,075,674<br />(LDIR x 5.5)|
|Exomizer3|deexoopt_f3_180_p7|            219|          4,902<br />(29.91%)|      2,152,413<br />(LDIR x 5.7)|
|hrust|dehrust_ix|            234|          4,895<br />(29.87%)|      1,520,335<br />(LDIR x 4.0)|
|hrust|dehrust_stk|            209|          4,895<br />(29.87%)|      1,394,349<br />(LDIR x 3.7)|
|lz4|lz4dec|             97|          5,796<br />(35.37%)|        512,262<br />(LDIR x 1.3)|
|lz4|lz4dec_ram|            100|          5,796<br />(35.37%)|        502,574<br />(LDIR x 1.3)|
|lz4|lz4dec_rom|            100|          5,796<br />(35.37%)|        506,849<br />(LDIR x 1.3)|
|lz4|unlz4_stephenw32768|             72|          5,796<br />(35.37%)|        501,970<br />(LDIR x 1.3)|
|lz4|unlz4_drapich|            251|          5,796<br />(35.37%)|        496,916<br />(LDIR x 1.3)|
|lz4|unlz4_spke|            103|          5,796<br />(35.37%)|        488,980<br />(LDIR x 1.2)|
|lz4|unlz4_spke_ur|            100|          5,796<br />(35.37%)|        482,590<br />(LDIR x 1.2)|
|lz48|lz48decrunch_v006|             84|          5,752<br />(35.10%)|        506,229<br />(LDIR x 1.3)|
|lz48|lz48decrunch\_v006\_|             70|          5,752<br />(35.10%)|        504,561<br />(LDIR x 1.3)|
|lz48|lz48decrunch_v006__180|             74|          5,752<br />(35.10%)|        500,894<br />(LDIR x 1.3)|
|lz49|lz49decrunch_v001|            106|          5,559<br />(33.92%)|        540,251<br />(LDIR x 1.4)|
|lz49|lz49decrunch_v001_180|            108|          5,559<br />(33.92%)|        532,848<br />(LDIR x 1.4)|
|lze|lzdec|            119|          5,463<br />(33.34%)|        846,520<br />(LDIR x 2.2)|
|lze|lzdec_104|            104|          5,463<br />(33.34%)|        798,828<br />(LDIR x 2.1)|
|lzee|lzee_dec_area|             88|          5,459<br />(33.31%)|        973,795<br />(LDIR x 2.5)|
|lzee|lzee_dec_speed|            102|          5,459<br />(33.31%)|        785,523<br />(LDIR x 2.0)|
|lzsa1|unlzsa1_fast_v1|            111|          5,392<br />(32.91%)|        487,034<br />(LDIR x 1.2)|
|lzsa1|unlzsa1_small_v1|             68|          5,392<br />(32.91%)|        515,031<br />(LDIR x 1.3)|
|lzsa2|unlzsa2_fast_v1|            214|          5,122<br />(31.26%)|        637,917<br />(LDIR x 1.6)|
|lzsa2|unlzsa2_fast_v1_180|            212|          5,122<br />(31.26%)|        644,885<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_small_v1|            140|          5,122<br />(31.26%)|        690,205<br />(LDIR x 1.8)|
|lzsa2|unlzsa2_small_v1_180|            138|          5,122<br />(31.26%)|        697,173<br />(LDIR x 1.8)|
|MegaLZ|megalz_dec40|            110|          5,124<br />(31.27%)|      1,578,986<br />(LDIR x 4.1)|
|MegaLZ|unmegalz_fast_v2|            233|          5,124<br />(31.27%)|        838,672<br />(LDIR x 2.2)|
|MegaLZ|unmegalz_small_v2|             92|          5,124<br />(31.27%)|      1,194,407<br />(LDIR x 3.1)|
|Pletter|unpletter|            170|          5,083<br />(31.02%)|        905,030<br />(LDIR x 2.4)|
|Pletter|unpletter_180|            169|          5,083<br />(31.02%)|        903,388<br />(LDIR x 2.3)|
|Shrinkler|shrinkler_recall_209|            209|          4,680<br />(28.56%)|     78,117,653<br />(LDIR x 207.2)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          4,680<br />(28.56%)|     77,792,909<br />(LDIR x 206.4)|
|zx7|dzx7_lom_v1|            214|          5,080<br />(31.00%)|        844,236<br />(LDIR x 2.2)|
|zx7|dzx7_mega|            244|          5,080<br />(31.00%)|        882,036<br />(LDIR x 2.3)|
|zx7|dzx7_turbo|             88|          5,080<br />(31.00%)|        950,318<br />(LDIR x 2.5)|
|zx7|dzx7_standard|             69|          5,080<br />(31.00%)|      1,192,495<br />(LDIR x 3.1)|
|zx7b|dzx7b_fast|            191|          5,091<br />(31.07%)|        769,861<br />(LDIR x 2.0)|
|zx7b|dzx7b_fast_r800|            191|          5,091<br />(31.07%)|        769,861<br />(LDIR x 2.0)|
|zx7b|dzx7b_slow|             64|          5,091<br />(31.07%)|      1,109,193<br />(LDIR x 2.9)|
|zx7b|dzx7b_slow_r800|             64|          5,091<br />(31.07%)|      1,109,193<br />(LDIR x 2.9)|



test data:MEGASDHC.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         12,494<br />(76.25%)|      7,962,111<br />(LDIR x 21.1)|
|Exomizer2|deexo_180|            166|         12,494<br />(76.25%)|      7,962,005<br />(LDIR x 21.1)|
|Exomizer2|deexo_180_fast_jp|            176|         12,494<br />(76.25%)|      6,808,036<br />(LDIR x 18.0)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,494<br />(76.25%)|      5,419,432<br />(LDIR x 14.3)|
|Exomizer3|deexo3p7|            176|         12,494<br />(76.25%)|      6,005,290<br />(LDIR x 15.9)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,494<br />(76.25%)|      5,123,001<br />(LDIR x 13.5)|
|Exomizer3|deexo3|            197|         12,494<br />(76.25%)|      5,368,287<br />(LDIR x 14.2)|
|Exomizer3|deexoopt_p7|            219|         12,494<br />(76.25%)|      4,676,657<br />(LDIR x 12.4)|
|Exomizer3|deexoopt_f3_p7|            212|         12,494<br />(76.25%)|      4,497,278<br />(LDIR x 11.9)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,494<br />(76.25%)|      4,680,084<br />(LDIR x 12.4)|
|hrust|dehrust_ix|            234|         12,563<br />(76.67%)|      3,175,826<br />(LDIR x 8.4)|
|hrust|dehrust_stk|            209|         12,563<br />(76.67%)|      2,861,857<br />(LDIR x 7.5)|
|lz4|lz4dec|             97|         14,743<br />(89.98%)|        604,867<br />(LDIR x 1.6)|
|lz4|lz4dec_ram|            100|         14,743<br />(89.98%)|        588,667<br />(LDIR x 1.5)|
|lz4|lz4dec_rom|            100|         14,743<br />(89.98%)|        595,712<br />(LDIR x 1.5)|
|lz4|unlz4_stephenw32768|             72|         14,743<br />(89.98%)|        586,354<br />(LDIR x 1.5)|
|lz4|unlz4_drapich|            251|         14,743<br />(89.98%)|        575,624<br />(LDIR x 1.5)|
|lz4|unlz4_spke|            103|         14,743<br />(89.98%)|        561,559<br />(LDIR x 1.4)|
|lz4|unlz4_spke_ur|            100|         14,743<br />(89.98%)|        551,014<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006|             84|         14,588<br />(89.03%)|        597,859<br />(LDIR x 1.5)|
|lz48|lz48decrunch\_v006\_|             70|         14,588<br />(89.03%)|        593,341<br />(LDIR x 1.5)|
|lz48|lz48decrunch_v006__180|             74|         14,588<br />(89.03%)|        587,052<br />(LDIR x 1.5)|
|lz49|lz49decrunch_v001|            106|         14,512<br />(88.57%)|        675,825<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001_180|            108|         14,512<br />(88.57%)|        660,781<br />(LDIR x 1.7)|
|lze|lzdec|            119|         13,472<br />(82.22%)|      1,536,039<br />(LDIR x 4.0)|
|lze|lzdec_104|            104|         13,472<br />(82.22%)|      1,417,875<br />(LDIR x 3.7)|
|lzee|lzee_dec_area|             88|         13,468<br />(82.20%)|      1,864,327<br />(LDIR x 4.9)|
|lzee|lzee_dec_speed|            102|         13,468<br />(82.20%)|      1,387,184<br />(LDIR x 3.6)|
|lzsa1|unlzsa1_fast_v1|            111|         14,044<br />(85.71%)|        616,730<br />(LDIR x 1.6)|
|lzsa1|unlzsa1_small_v1|             68|         14,044<br />(85.71%)|        677,646<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_fast_v1|            214|         13,180<br />(80.44%)|      1,069,936<br />(LDIR x 2.8)|
|lzsa2|unlzsa2_fast_v1_180|            212|         13,180<br />(80.44%)|      1,088,472<br />(LDIR x 2.8)|
|lzsa2|unlzsa2_small_v1|            140|         13,180<br />(80.44%)|      1,208,069<br />(LDIR x 3.2)|
|lzsa2|unlzsa2_small_v1_180|            138|         13,180<br />(80.44%)|      1,226,605<br />(LDIR x 3.2)|
|MegaLZ|megalz_dec40|            110|         12,965<br />(79.13%)|      3,108,603<br />(LDIR x 8.2)|
|MegaLZ|unmegalz_fast_v2|            233|         12,965<br />(79.13%)|      1,352,140<br />(LDIR x 3.5)|
|MegaLZ|unmegalz_small_v2|             92|         12,965<br />(79.13%)|      2,168,953<br />(LDIR x 5.7)|
|Pletter|unpletter|            170|         12,945<br />(79.01%)|      1,990,443<br />(LDIR x 5.2)|
|Pletter|unpletter_180|            169|         12,945<br />(79.01%)|      1,985,591<br />(LDIR x 5.2)|
|Shrinkler|shrinkler_recall_209|            209|         12,148<br />(74.14%)|    204,353,362<br />(LDIR x 542.2)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         12,148<br />(74.14%)|    203,520,042<br />(LDIR x 540.0)|
|zx7|dzx7_lom_v1|            214|         13,104<br />(79.98%)|      1,607,280<br />(LDIR x 4.2)|
|zx7|dzx7_mega|            244|         13,104<br />(79.98%)|      1,705,708<br />(LDIR x 4.5)|
|zx7|dzx7_turbo|             88|         13,104<br />(79.98%)|      1,892,199<br />(LDIR x 5.0)|
|zx7|dzx7_standard|             69|         13,104<br />(79.98%)|      2,571,139<br />(LDIR x 6.8)|
|zx7b|dzx7b_fast|            191|         13,103<br />(79.97%)|      1,438,531<br />(LDIR x 3.8)|
|zx7b|dzx7b_fast_r800|            191|         13,103<br />(79.97%)|      1,438,531<br />(LDIR x 3.8)|
|zx7b|dzx7b_slow|             64|         13,103<br />(79.97%)|      2,374,575<br />(LDIR x 6.3)|
|zx7b|dzx7b_slow_r800|             64|         13,103<br />(79.97%)|      2,374,575<br />(LDIR x 6.3)|



test data:MEGASDHC.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         12,297<br />(75.05%)|      7,705,336<br />(LDIR x 20.4)|
|Exomizer2|deexo_180|            166|         12,297<br />(75.05%)|      7,705,250<br />(LDIR x 20.4)|
|Exomizer2|deexo_180_fast_jp|            176|         12,297<br />(75.05%)|      6,613,232<br />(LDIR x 17.5)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,297<br />(75.05%)|      5,232,700<br />(LDIR x 13.8)|
|Exomizer3|deexo3p7|            176|         12,297<br />(75.05%)|      6,143,310<br />(LDIR x 16.3)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,297<br />(75.05%)|      5,242,630<br />(LDIR x 13.9)|
|Exomizer3|deexo3|            197|         12,297<br />(75.05%)|      5,478,882<br />(LDIR x 14.5)|
|Exomizer3|deexoopt_p7|            219|         12,297<br />(75.05%)|      4,667,845<br />(LDIR x 12.3)|
|Exomizer3|deexoopt_f3_p7|            212|         12,297<br />(75.05%)|      4,478,345<br />(LDIR x 11.8)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,297<br />(75.05%)|      4,667,380<br />(LDIR x 12.3)|
|hrust|dehrust_ix|            234|         12,282<br />(74.96%)|      2,984,997<br />(LDIR x 7.9)|
|hrust|dehrust_stk|            209|         12,282<br />(74.96%)|      2,678,183<br />(LDIR x 7.1)|
|lz4|lz4dec|             97|         14,290<br />(87.21%)|        576,712<br />(LDIR x 1.5)|
|lz4|lz4dec_ram|            100|         14,290<br />(87.21%)|        562,600<br />(LDIR x 1.4)|
|lz4|lz4dec_rom|            100|         14,290<br />(87.21%)|        568,735<br />(LDIR x 1.5)|
|lz4|unlz4_stephenw32768|             72|         14,290<br />(87.21%)|        560,447<br />(LDIR x 1.4)|
|lz4|unlz4_drapich|            251|         14,290<br />(87.21%)|        550,867<br />(LDIR x 1.4)|
|lz4|unlz4_spke|            103|         14,290<br />(87.21%)|        538,413<br />(LDIR x 1.4)|
|lz4|unlz4_spke_ur|            100|         14,290<br />(87.21%)|        529,233<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006|             84|         14,250<br />(86.97%)|        585,776<br />(LDIR x 1.5)|
|lz48|lz48decrunch\_v006\_|             70|         14,250<br />(86.97%)|        581,226<br />(LDIR x 1.5)|
|lz48|lz48decrunch_v006__180|             74|         14,250<br />(86.97%)|        575,253<br />(LDIR x 1.5)|
|lz49|lz49decrunch_v001|            106|         14,030<br />(85.63%)|        658,644<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001_180|            108|         14,030<br />(85.63%)|        645,027<br />(LDIR x 1.7)|
|lze|lzdec|            119|         13,187<br />(80.48%)|      1,481,802<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         13,187<br />(80.48%)|      1,372,662<br />(LDIR x 3.6)|
|lzee|lzee_dec_area|             88|         13,183<br />(80.46%)|      1,809,889<br />(LDIR x 4.8)|
|lzee|lzee_dec_speed|            102|         13,183<br />(80.46%)|      1,346,324<br />(LDIR x 3.5)|
|lzsa1|unlzsa1_fast_v1|            111|         13,703<br />(83.63%)|        591,694<br />(LDIR x 1.5)|
|lzsa1|unlzsa1_small_v1|             68|         13,703<br />(83.63%)|        646,565<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_fast_v1|            214|         12,857<br />(78.47%)|      1,003,427<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_fast_v1_180|            212|         12,857<br />(78.47%)|      1,020,115<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_small_v1|            140|         12,857<br />(78.47%)|      1,128,519<br />(LDIR x 2.9)|
|lzsa2|unlzsa2_small_v1_180|            138|         12,857<br />(78.47%)|      1,145,207<br />(LDIR x 3.0)|
|MegaLZ|megalz_dec40|            110|         12,660<br />(77.27%)|      2,979,373<br />(LDIR x 7.9)|
|MegaLZ|unmegalz_fast_v2|            233|         12,660<br />(77.27%)|      1,300,533<br />(LDIR x 3.4)|
|MegaLZ|unmegalz_small_v2|             92|         12,660<br />(77.27%)|      2,077,557<br />(LDIR x 5.5)|
|Pletter|unpletter|            170|         12,700<br />(77.51%)|      1,873,970<br />(LDIR x 4.9)|
|Pletter|unpletter_180|            169|         12,700<br />(77.51%)|      1,869,238<br />(LDIR x 4.9)|
|Shrinkler|shrinkler_recall_209|            209|         11,916<br />(72.72%)|    198,247,021<br />(LDIR x 526.0)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         11,916<br />(72.72%)|    197,406,701<br />(LDIR x 523.8)|
|zx7|dzx7_lom_v1|            214|         12,784<br />(78.02%)|      1,504,449<br />(LDIR x 3.9)|
|zx7|dzx7_mega|            244|         12,784<br />(78.02%)|      1,593,575<br />(LDIR x 4.2)|
|zx7|dzx7_turbo|             88|         12,784<br />(78.02%)|      1,771,697<br />(LDIR x 4.7)|
|zx7|dzx7_standard|             69|         12,784<br />(78.02%)|      2,400,076<br />(LDIR x 6.3)|
|zx7b|dzx7b_fast|            191|         12,810<br />(78.18%)|      1,341,173<br />(LDIR x 3.5)|
|zx7b|dzx7b_fast_r800|            191|         12,810<br />(78.18%)|      1,341,173<br />(LDIR x 3.5)|
|zx7b|dzx7b_slow|             64|         12,810<br />(78.18%)|      2,211,732<br />(LDIR x 5.8)|
|zx7b|dzx7b_slow_r800|             64|         12,810<br />(78.18%)|      2,211,732<br />(LDIR x 5.8)|



test data:MSX2MAIN.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         12,740<br />(77.75%)|      7,678,676<br />(LDIR x 20.3)|
|Exomizer2|deexo_180|            166|         12,740<br />(77.75%)|      7,678,762<br />(LDIR x 20.3)|
|Exomizer2|deexo_180_fast_jp|            176|         12,740<br />(77.75%)|      6,608,801<br />(LDIR x 17.5)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,740<br />(77.75%)|      5,234,946<br />(LDIR x 13.8)|
|Exomizer3|deexo3p7|            176|         12,739<br />(77.75%)|      6,207,944<br />(LDIR x 16.4)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,739<br />(77.75%)|      5,309,942<br />(LDIR x 14.0)|
|Exomizer3|deexo3|            197|         12,739<br />(77.75%)|      5,555,193<br />(LDIR x 14.7)|
|Exomizer3|deexoopt_p7|            219|         12,739<br />(77.75%)|      4,714,326<br />(LDIR x 12.5)|
|Exomizer3|deexoopt_f3_p7|            212|         12,739<br />(77.75%)|      4,517,671<br />(LDIR x 11.9)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,739<br />(77.75%)|      4,712,862<br />(LDIR x 12.5)|
|hrust|dehrust_ix|            234|         12,768<br />(77.92%)|      3,074,734<br />(LDIR x 8.1)|
|hrust|dehrust_stk|            209|         12,768<br />(77.92%)|      2,750,174<br />(LDIR x 7.2)|
|lz4|lz4dec|             97|         14,837<br />(90.55%)|        587,590<br />(LDIR x 1.5)|
|lz4|lz4dec_ram|            100|         14,837<br />(90.55%)|        572,502<br />(LDIR x 1.5)|
|lz4|lz4dec_rom|            100|         14,837<br />(90.55%)|        579,047<br />(LDIR x 1.5)|
|lz4|unlz4_stephenw32768|             72|         14,837<br />(90.55%)|        570,844<br />(LDIR x 1.5)|
|lz4|unlz4_drapich|            251|         14,837<br />(90.55%)|        561,194<br />(LDIR x 1.4)|
|lz4|unlz4_spke|            103|         14,837<br />(90.55%)|        548,141<br />(LDIR x 1.4)|
|lz4|unlz4_spke_ur|            100|         14,837<br />(90.55%)|        538,346<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006|             84|         14,268<br />(87.08%)|        619,366<br />(LDIR x 1.6)|
|lz48|lz48decrunch\_v006\_|             70|         14,268<br />(87.08%)|        613,020<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006__180|             74|         14,268<br />(87.08%)|        606,546<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001|            106|         14,196<br />(86.64%)|        680,983<br />(LDIR x 1.8)|
|lz49|lz49decrunch_v001_180|            108|         14,196<br />(86.64%)|        664,728<br />(LDIR x 1.7)|
|lze|lzdec|            119|         13,698<br />(83.60%)|      1,533,796<br />(LDIR x 4.0)|
|lze|lzdec_104|            104|         13,698<br />(83.60%)|      1,416,718<br />(LDIR x 3.7)|
|lzee|lzee_dec_area|             88|         13,694<br />(83.58%)|      1,897,881<br />(LDIR x 5.0)|
|lzee|lzee_dec_speed|            102|         13,694<br />(83.58%)|      1,395,540<br />(LDIR x 3.7)|
|lzsa1|unlzsa1_fast_v1|            111|         14,087<br />(85.98%)|        589,062<br />(LDIR x 1.5)|
|lzsa1|unlzsa1_small_v1|             68|         14,087<br />(85.98%)|        643,214<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_fast_v1|            214|         13,347<br />(81.46%)|        982,796<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_fast_v1_180|            212|         13,347<br />(81.46%)|        999,188<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_small_v1|            140|         13,347<br />(81.46%)|      1,101,100<br />(LDIR x 2.9)|
|lzsa2|unlzsa2_small_v1_180|            138|         13,347<br />(81.46%)|      1,117,492<br />(LDIR x 2.9)|
|MegaLZ|megalz_dec40|            110|         13,072<br />(79.78%)|      3,077,702<br />(LDIR x 8.1)|
|MegaLZ|unmegalz_fast_v2|            233|         13,072<br />(79.78%)|      1,336,616<br />(LDIR x 3.5)|
|MegaLZ|unmegalz_small_v2|             92|         13,072<br />(79.78%)|      2,132,837<br />(LDIR x 5.6)|
|Pletter|unpletter|            170|         13,205<br />(80.59%)|      1,788,932<br />(LDIR x 4.7)|
|Pletter|unpletter_180|            169|         13,205<br />(80.59%)|      1,784,570<br />(LDIR x 4.7)|
|Shrinkler|shrinkler_recall_209|            209|         12,276<br />(74.92%)|    202,922,527<br />(LDIR x 538.4)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         12,276<br />(74.92%)|    202,068,589<br />(LDIR x 536.2)|
|zx7|dzx7_lom_v1|            214|         13,224<br />(80.71%)|      1,451,456<br />(LDIR x 3.8)|
|zx7|dzx7_mega|            244|         13,224<br />(80.71%)|      1,544,576<br />(LDIR x 4.0)|
|zx7|dzx7_turbo|             88|         13,224<br />(80.71%)|      1,714,445<br />(LDIR x 4.5)|
|zx7|dzx7_standard|             69|         13,224<br />(80.71%)|      2,295,448<br />(LDIR x 6.0)|
|zx7b|dzx7b_fast|            191|         13,248<br />(80.85%)|      1,312,892<br />(LDIR x 3.4)|
|zx7b|dzx7b_fast_r800|            191|         13,248<br />(80.85%)|      1,312,892<br />(LDIR x 3.4)|
|zx7b|dzx7b_slow|             64|         13,248<br />(80.85%)|      2,140,196<br />(LDIR x 5.6)|
|zx7b|dzx7b_slow_r800|             64|         13,248<br />(80.85%)|      2,140,196<br />(LDIR x 5.6)|



test data:MSX2MAIN.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         13,402<br />(81.79%)|      8,119,431<br />(LDIR x 21.5)|
|Exomizer2|deexo_180|            166|         13,402<br />(81.79%)|      8,119,361<br />(LDIR x 21.5)|
|Exomizer2|deexo_180_fast_jp|            176|         13,402<br />(81.79%)|      6,941,251<br />(LDIR x 18.4)|
|Exomizer2|deexoopt_f3_180_p0|            242|         13,402<br />(81.79%)|      5,530,017<br />(LDIR x 14.6)|
|Exomizer3|deexo3p7|            176|         13,402<br />(81.79%)|      6,031,181<br />(LDIR x 16.0)|
|Exomizer3|deexo3p7_fast_jp|            181|         13,402<br />(81.79%)|      5,156,357<br />(LDIR x 13.6)|
|Exomizer3|deexo3|            197|         13,402<br />(81.79%)|      5,409,124<br />(LDIR x 14.3)|
|Exomizer3|deexoopt_p7|            219|         13,402<br />(81.79%)|      4,709,224<br />(LDIR x 12.4)|
|Exomizer3|deexoopt_f3_p7|            212|         13,402<br />(81.79%)|      4,528,588<br />(LDIR x 12.0)|
|Exomizer3|deexoopt_f3_180_p7|            219|         13,402<br />(81.79%)|      4,715,901<br />(LDIR x 12.5)|
|hrust|dehrust_ix|            234|         13,454<br />(82.11%)|      3,143,717<br />(LDIR x 8.3)|
|hrust|dehrust_stk|            209|         13,454<br />(82.11%)|      2,812,027<br />(LDIR x 7.4)|
|lz4|lz4dec|             97|         15,448<br />(94.28%)|        558,865<br />(LDIR x 1.4)|
|lz4|lz4dec_ram|            100|         15,448<br />(94.28%)|        545,945<br />(LDIR x 1.4)|
|lz4|lz4dec_rom|            100|         15,448<br />(94.28%)|        551,470<br />(LDIR x 1.4)|
|lz4|unlz4_stephenw32768|             72|         15,448<br />(94.28%)|        544,750<br />(LDIR x 1.4)|
|lz4|unlz4_drapich|            251|         15,448<br />(94.28%)|        535,356<br />(LDIR x 1.4)|
|lz4|unlz4_spke|            103|         15,448<br />(94.28%)|        523,564<br />(LDIR x 1.3)|
|lz4|unlz4_spke_ur|            100|         15,448<br />(94.28%)|        515,299<br />(LDIR x 1.3)|
|lz48|lz48decrunch_v006|             84|         15,305<br />(93.41%)|        566,961<br />(LDIR x 1.5)|
|lz48|lz48decrunch\_v006\_|             70|         15,305<br />(93.41%)|        563,268<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006__180|             74|         15,305<br />(93.41%)|        557,634<br />(LDIR x 1.4)|
|lz49|lz49decrunch_v001|            106|         15,254<br />(93.10%)|        636,775<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001_180|            108|         15,254<br />(93.10%)|        624,081<br />(LDIR x 1.6)|
|lze|lzdec|            119|         14,389<br />(87.82%)|      1,560,048<br />(LDIR x 4.1)|
|lze|lzdec_104|            104|         14,389<br />(87.82%)|      1,446,466<br />(LDIR x 3.8)|
|lzee|lzee_dec_area|             88|         14,385<br />(87.79%)|      1,916,137<br />(LDIR x 5.0)|
|lzee|lzee_dec_speed|            102|         14,385<br />(87.79%)|      1,418,151<br />(LDIR x 3.7)|
|lzsa1|unlzsa1_fast_v1|            111|         14,892<br />(90.89%)|        588,775<br />(LDIR x 1.5)|
|lzsa1|unlzsa1_small_v1|             68|         14,892<br />(90.89%)|        642,195<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_fast_v1|            214|         14,094<br />(86.02%)|      1,023,734<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_fast_v1_180|            212|         14,094<br />(86.02%)|      1,040,550<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_small_v1|            140|         14,094<br />(86.02%)|      1,156,885<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_small_v1_180|            138|         14,094<br />(86.02%)|      1,173,701<br />(LDIR x 3.1)|
|MegaLZ|megalz_dec40|            110|         13,917<br />(84.94%)|      3,129,990<br />(LDIR x 8.3)|
|MegaLZ|unmegalz_fast_v2|            233|         13,917<br />(84.94%)|      1,336,318<br />(LDIR x 3.5)|
|MegaLZ|unmegalz_small_v2|             92|         13,917<br />(84.94%)|      2,161,096<br />(LDIR x 5.7)|
|Pletter|unpletter|            170|         13,909<br />(84.89%)|      1,997,407<br />(LDIR x 5.3)|
|Pletter|unpletter_180|            169|         13,909<br />(84.89%)|      1,992,525<br />(LDIR x 5.2)|
|Shrinkler|shrinkler_recall_209|            209|         13,100<br />(79.95%)|    219,699,688<br />(LDIR x 583.0)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         13,100<br />(79.95%)|    218,776,382<br />(LDIR x 580.5)|
|zx7|dzx7_lom_v1|            214|         14,021<br />(85.57%)|      1,563,876<br />(LDIR x 4.1)|
|zx7|dzx7_mega|            244|         14,021<br />(85.57%)|      1,657,663<br />(LDIR x 4.3)|
|zx7|dzx7_turbo|             88|         14,021<br />(85.57%)|      1,849,758<br />(LDIR x 4.9)|
|zx7|dzx7_standard|             69|         14,021<br />(85.57%)|      2,522,726<br />(LDIR x 6.6)|
|zx7b|dzx7b_fast|            191|         14,002<br />(85.46%)|      1,411,404<br />(LDIR x 3.7)|
|zx7b|dzx7b_fast_r800|            191|         14,002<br />(85.46%)|      1,411,404<br />(LDIR x 3.7)|
|zx7b|dzx7b_slow|             64|         14,002<br />(85.46%)|      2,355,118<br />(LDIR x 6.2)|
|zx7b|dzx7b_slow_r800|             64|         14,002<br />(85.46%)|      2,355,118<br />(LDIR x 6.2)|



test data:MSXMUSIC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,068<br />(61.45%)|      5,986,114<br />(LDIR x 15.8)|
|Exomizer2|deexo_180|            166|         10,068<br />(61.45%)|      5,986,088<br />(LDIR x 15.8)|
|Exomizer2|deexo_180_fast_jp|            176|         10,068<br />(61.45%)|      5,151,150<br />(LDIR x 13.6)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,068<br />(61.45%)|      4,111,774<br />(LDIR x 10.9)|
|Exomizer3|deexo3p7|            176|         10,068<br />(61.45%)|      4,792,485<br />(LDIR x 12.7)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,068<br />(61.45%)|      4,105,700<br />(LDIR x 10.8)|
|Exomizer3|deexo3|            197|         10,068<br />(61.45%)|      4,292,489<br />(LDIR x 11.3)|
|Exomizer3|deexoopt_p7|            219|         10,068<br />(61.45%)|      3,672,667<br />(LDIR x 9.7)|
|Exomizer3|deexoopt_f3_p7|            212|         10,068<br />(61.45%)|      3,524,205<br />(LDIR x 9.3)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,068<br />(61.45%)|      3,670,641<br />(LDIR x 9.7)|
|hrust|dehrust_ix|            234|         10,079<br />(61.51%)|      2,526,759<br />(LDIR x 6.7)|
|hrust|dehrust_stk|            209|         10,079<br />(61.51%)|      2,273,324<br />(LDIR x 6.0)|
|lz4|lz4dec|             97|         11,632<br />(70.99%)|        593,794<br />(LDIR x 1.5)|
|lz4|lz4dec_ram|            100|         11,632<br />(70.99%)|        578,050<br />(LDIR x 1.5)|
|lz4|lz4dec_rom|            100|         11,632<br />(70.99%)|        584,835<br />(LDIR x 1.5)|
|lz4|unlz4_stephenw32768|             72|         11,632<br />(70.99%)|        577,362<br />(LDIR x 1.5)|
|lz4|unlz4_drapich|            251|         11,632<br />(70.99%)|        568,120<br />(LDIR x 1.5)|
|lz4|unlz4_spke|            103|         11,632<br />(70.99%)|        554,351<br />(LDIR x 1.4)|
|lz4|unlz4_spke_ur|            100|         11,632<br />(70.99%)|        544,196<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006|             84|         12,121<br />(73.98%)|        597,381<br />(LDIR x 1.5)|
|lz48|lz48decrunch\_v006\_|             70|         12,121<br />(73.98%)|        593,944<br />(LDIR x 1.5)|
|lz48|lz48decrunch_v006__180|             74|         12,121<br />(73.98%)|        587,545<br />(LDIR x 1.5)|
|lz49|lz49decrunch_v001|            106|         11,980<br />(73.12%)|        648,929<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001_180|            108|         11,980<br />(73.12%)|        636,665<br />(LDIR x 1.6)|
|lze|lzdec|            119|         10,830<br />(66.10%)|      1,270,114<br />(LDIR x 3.3)|
|lze|lzdec_104|            104|         10,830<br />(66.10%)|      1,183,499<br />(LDIR x 3.1)|
|lzee|lzee_dec_area|             88|         10,826<br />(66.07%)|      1,543,591<br />(LDIR x 4.0)|
|lzee|lzee_dec_speed|            102|         10,826<br />(66.07%)|      1,164,007<br />(LDIR x 3.0)|
|lzsa1|unlzsa1_fast_v1|            111|         11,049<br />(67.43%)|        567,972<br />(LDIR x 1.5)|
|lzsa1|unlzsa1_small_v1|             68|         11,049<br />(67.43%)|        615,969<br />(LDIR x 1.6)|
|lzsa2|unlzsa2_fast_v1|            214|         10,396<br />(63.45%)|        881,384<br />(LDIR x 2.3)|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,396<br />(63.45%)|        894,584<br />(LDIR x 2.3)|
|lzsa2|unlzsa2_small_v1|            140|         10,396<br />(63.45%)|        985,810<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_small_v1_180|            138|         10,396<br />(63.45%)|        999,010<br />(LDIR x 2.6)|
|MegaLZ|megalz_dec40|            110|         10,407<br />(63.51%)|      2,560,679<br />(LDIR x 6.7)|
|MegaLZ|unmegalz_fast_v2|            233|         10,407<br />(63.51%)|      1,164,712<br />(LDIR x 3.0)|
|MegaLZ|unmegalz_small_v2|             92|         10,407<br />(63.51%)|      1,804,490<br />(LDIR x 4.7)|
|Pletter|unpletter|            170|         10,466<br />(63.87%)|      1,474,879<br />(LDIR x 3.9)|
|Pletter|unpletter_180|            169|         10,466<br />(63.87%)|      1,472,247<br />(LDIR x 3.9)|
|Shrinkler|shrinkler_recall_209|            209|          9,536<br />(58.20%)|    157,373,448<br />(LDIR x 417.6)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          9,536<br />(58.20%)|    156,716,164<br />(LDIR x 415.8)|
|zx7|dzx7_lom_v1|            214|         10,515<br />(64.17%)|      1,216,320<br />(LDIR x 3.2)|
|zx7|dzx7_mega|            244|         10,515<br />(64.17%)|      1,286,325<br />(LDIR x 3.4)|
|zx7|dzx7_turbo|             88|         10,515<br />(64.17%)|      1,421,903<br />(LDIR x 3.7)|
|zx7|dzx7_standard|             69|         10,515<br />(64.17%)|      1,877,019<br />(LDIR x 4.9)|
|zx7b|dzx7b_fast|            191|         10,495<br />(64.05%)|      1,103,981<br />(LDIR x 2.9)|
|zx7b|dzx7b_fast_r800|            191|         10,495<br />(64.05%)|      1,103,981<br />(LDIR x 2.9)|
|zx7b|dzx7b_slow|             64|         10,495<br />(64.05%)|      1,753,820<br />(LDIR x 4.6)|
|zx7b|dzx7b_slow_r800|             64|         10,495<br />(64.05%)|      1,753,820<br />(LDIR x 4.6)|



test data:MSX2EXT.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         12,351<br />(75.38%)|      8,066,566<br />(LDIR x 21.4)|
|Exomizer2|deexo_180|            166|         12,351<br />(75.38%)|      8,066,560<br />(LDIR x 21.4)|
|Exomizer2|deexo_180_fast_jp|            176|         12,351<br />(75.38%)|      6,927,202<br />(LDIR x 18.3)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,351<br />(75.38%)|      5,487,189<br />(LDIR x 14.5)|
|Exomizer3|deexo3p7|            176|         12,351<br />(75.38%)|      6,374,679<br />(LDIR x 16.9)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,351<br />(75.38%)|      5,452,809<br />(LDIR x 14.4)|
|Exomizer3|deexo3|            197|         12,351<br />(75.38%)|      5,703,404<br />(LDIR x 15.1)|
|Exomizer3|deexoopt_p7|            219|         12,351<br />(75.38%)|      4,856,626<br />(LDIR x 12.8)|
|Exomizer3|deexoopt_f3_p7|            212|         12,351<br />(75.38%)|      4,657,693<br />(LDIR x 12.3)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,351<br />(75.38%)|      4,857,716<br />(LDIR x 12.8)|
|hrust|dehrust_ix|            234|         12,331<br />(75.26%)|      3,118,348<br />(LDIR x 8.2)|
|hrust|dehrust_stk|            209|         12,331<br />(75.26%)|      2,808,254<br />(LDIR x 7.4)|
|lz4|lz4dec|             97|         14,578<br />(88.97%)|        599,145<br />(LDIR x 1.5)|
|lz4|lz4dec_ram|            100|         14,578<br />(88.97%)|        583,209<br />(LDIR x 1.5)|
|lz4|lz4dec_rom|            100|         14,578<br />(88.97%)|        590,074<br />(LDIR x 1.5)|
|lz4|unlz4_stephenw32768|             72|         14,578<br />(88.97%)|        581,843<br />(LDIR x 1.5)|
|lz4|unlz4_drapich|            251|         14,578<br />(88.97%)|        571,461<br />(LDIR x 1.5)|
|lz4|unlz4_spke|            103|         14,578<br />(88.97%)|        557,332<br />(LDIR x 1.4)|
|lz4|unlz4_spke_ur|            100|         14,578<br />(88.97%)|        547,057<br />(LDIR x 1.4)|
|lz48|lz48decrunch_v006|             84|         14,074<br />(85.90%)|        638,203<br />(LDIR x 1.6)|
|lz48|lz48decrunch\_v006\_|             70|         14,074<br />(85.90%)|        633,823<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006__180|             74|         14,074<br />(85.90%)|        626,334<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001|            106|         13,969<br />(85.26%)|        708,915<br />(LDIR x 1.8)|
|lz49|lz49decrunch_v001_180|            108|         13,969<br />(85.26%)|        690,869<br />(LDIR x 1.8)|
|lze|lzdec|            119|         13,303<br />(81.19%)|      1,505,104<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         13,303<br />(81.19%)|      1,391,024<br />(LDIR x 3.6)|
|lzee|lzee_dec_area|             88|         13,299<br />(81.17%)|      1,847,207<br />(LDIR x 4.9)|
|lzee|lzee_dec_speed|            102|         13,299<br />(81.17%)|      1,367,029<br />(LDIR x 3.6)|
|lzsa1|unlzsa1_fast_v1|            111|         13,719<br />(83.73%)|        620,403<br />(LDIR x 1.6)|
|lzsa1|unlzsa1_small_v1|             68|         13,719<br />(83.73%)|        682,063<br />(LDIR x 1.8)|
|lzsa2|unlzsa2_fast_v1|            214|         12,862<br />(78.50%)|      1,019,741<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_fast_v1_180|            212|         12,862<br />(78.50%)|      1,037,029<br />(LDIR x 2.7)|
|lzsa2|unlzsa2_small_v1|            140|         12,862<br />(78.50%)|      1,147,229<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_small_v1_180|            138|         12,862<br />(78.50%)|      1,164,517<br />(LDIR x 3.0)|
|MegaLZ|megalz_dec40|            110|         12,833<br />(78.32%)|      3,030,834<br />(LDIR x 8.0)|
|MegaLZ|unmegalz_fast_v2|            233|         12,833<br />(78.32%)|      1,318,517<br />(LDIR x 3.4)|
|MegaLZ|unmegalz_small_v2|             92|         12,833<br />(78.32%)|      2,100,776<br />(LDIR x 5.5)|
|Pletter|unpletter|            170|         12,858<br />(78.47%)|      2,027,765<br />(LDIR x 5.3)|
|Pletter|unpletter_180|            169|         12,858<br />(78.47%)|      2,022,773<br />(LDIR x 5.3)|
|Shrinkler|shrinkler_recall_209|            209|         11,820<br />(72.14%)|    196,044,987<br />(LDIR x 520.2)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         11,820<br />(72.14%)|    195,221,406<br />(LDIR x 518.0)|
|zx7|dzx7_lom_v1|            214|         12,943<br />(78.99%)|      1,480,424<br />(LDIR x 3.9)|
|zx7|dzx7_mega|            244|         12,943<br />(78.99%)|      1,576,177<br />(LDIR x 4.1)|
|zx7|dzx7_turbo|             88|         12,943<br />(78.99%)|      1,746,118<br />(LDIR x 4.6)|
|zx7|dzx7_standard|             69|         12,943<br />(78.99%)|      2,342,486<br />(LDIR x 6.2)|
|zx7b|dzx7b_fast|            191|         12,964<br />(79.12%)|      1,328,878<br />(LDIR x 3.5)|
|zx7b|dzx7b_fast_r800|            191|         12,964<br />(79.12%)|      1,328,878<br />(LDIR x 3.5)|
|zx7b|dzx7b_slow|             64|         12,964<br />(79.12%)|      2,165,985<br />(LDIR x 5.7)|
|zx7b|dzx7b_slow_r800|             64|         12,964<br />(79.12%)|      2,165,985<br />(LDIR x 5.7)|



test data:KANJJ1.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|          6,097<br />(37.21%)|      5,111,648<br />(LDIR x 13.5)|
|Exomizer2|deexo_180|            166|          6,097<br />(37.21%)|      5,111,742<br />(LDIR x 13.5)|
|Exomizer2|deexo_180_fast_jp|            176|          6,097<br />(37.21%)|      4,404,488<br />(LDIR x 11.6)|
|Exomizer2|deexoopt_f3_180_p0|            242|          6,097<br />(37.21%)|      3,560,615<br />(LDIR x 9.4)|
|Exomizer3|deexo3p7|            176|          6,097<br />(37.21%)|      3,967,129<br />(LDIR x 10.5)|
|Exomizer3|deexo3p7_fast_jp|            181|          6,097<br />(37.21%)|      3,411,495<br />(LDIR x 9.0)|
|Exomizer3|deexo3|            197|          6,097<br />(37.21%)|      3,574,199<br />(LDIR x 9.4)|
|Exomizer3|deexoopt_p7|            219|          6,097<br />(37.21%)|      3,141,994<br />(LDIR x 8.3)|
|Exomizer3|deexoopt_f3_p7|            212|          6,097<br />(37.21%)|      3,021,020<br />(LDIR x 8.0)|
|Exomizer3|deexoopt_f3_180_p7|            219|          6,097<br />(37.21%)|      3,138,223<br />(LDIR x 8.3)|
|hrust|dehrust_ix|            234|          6,434<br />(39.27%)|      2,481,382<br />(LDIR x 6.5)|
|hrust|dehrust_stk|            209|          6,434<br />(39.27%)|      2,291,475<br />(LDIR x 6.0)|
|lz4|lz4dec|             97|          8,089<br />(49.37%)|        776,686<br />(LDIR x 2.0)|
|lz4|lz4dec_ram|            100|          8,089<br />(49.37%)|        747,878<br />(LDIR x 1.9)|
|lz4|lz4dec_rom|            100|          8,089<br />(49.37%)|        761,173<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|          8,089<br />(49.37%)|        739,534<br />(LDIR x 1.9)|
|lz4|unlz4_drapich|            251|          8,089<br />(49.37%)|        730,436<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|          8,089<br />(49.37%)|        708,931<br />(LDIR x 1.8)|
|lz4|unlz4_spke_ur|            100|          8,089<br />(49.37%)|        689,011<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|          8,167<br />(49.84%)|        753,001<br />(LDIR x 1.9)|
|lz48|lz48decrunch\_v006\_|             70|          8,167<br />(49.84%)|        735,565<br />(LDIR x 1.9)|
|lz48|lz48decrunch_v006__180|             74|          8,167<br />(49.84%)|        727,779<br />(LDIR x 1.9)|
|lz49|lz49decrunch_v001|            106|          7,824<br />(47.75%)|        820,492<br />(LDIR x 2.1)|
|lz49|lz49decrunch_v001_180|            108|          7,824<br />(47.75%)|        797,771<br />(LDIR x 2.1)|
|lze|lzdec|            119|          7,027<br />(42.88%)|      1,145,514<br />(LDIR x 3.0)|
|lze|lzdec_104|            104|          7,027<br />(42.88%)|      1,048,779<br />(LDIR x 2.7)|
|lzee|lzee_dec_area|             88|          7,023<br />(42.86%)|      1,256,449<br />(LDIR x 3.3)|
|lzee|lzee_dec_speed|            102|          7,023<br />(42.86%)|      1,007,713<br />(LDIR x 2.6)|
|lzsa1|unlzsa1_fast_v1|            111|          7,317<br />(44.65%)|        676,079<br />(LDIR x 1.7)|
|lzsa1|unlzsa1_small_v1|             68|          7,317<br />(44.65%)|        754,516<br />(LDIR x 2.0)|
|lzsa2|unlzsa2_fast_v1|            214|          6,509<br />(39.72%)|        979,518<br />(LDIR x 2.5)|
|lzsa2|unlzsa2_fast_v1_180|            212|          6,509<br />(39.72%)|        995,982<br />(LDIR x 2.6)|
|lzsa2|unlzsa2_small_v1|            140|          6,509<br />(39.72%)|      1,095,692<br />(LDIR x 2.9)|
|lzsa2|unlzsa2_small_v1_180|            138|          6,509<br />(39.72%)|      1,112,156<br />(LDIR x 2.9)|
|MegaLZ|megalz_dec40|            110|          6,514<br />(39.75%)|      2,432,743<br />(LDIR x 6.4)|
|MegaLZ|unmegalz_fast_v2|            233|          6,514<br />(39.75%)|      1,220,803<br />(LDIR x 3.2)|
|MegaLZ|unmegalz_small_v2|             92|          6,514<br />(39.75%)|      1,823,065<br />(LDIR x 4.8)|
|Pletter|unpletter|            170|          6,511<br />(39.73%)|      1,461,388<br />(LDIR x 3.8)|
|Pletter|unpletter_180|            169|          6,511<br />(39.73%)|      1,458,166<br />(LDIR x 3.8)|
|Shrinkler|shrinkler_recall_209|            209|          5,728<br />(34.96%)|    102,142,021<br />(LDIR x 271.0)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          5,728<br />(34.96%)|    101,844,323<br />(LDIR x 270.2)|
|zx7|dzx7_lom_v1|            214|          6,532<br />(39.86%)|      1,340,012<br />(LDIR x 3.5)|
|zx7|dzx7_mega|            244|          6,532<br />(39.86%)|      1,413,278<br />(LDIR x 3.7)|
|zx7|dzx7_turbo|             88|          6,532<br />(39.86%)|      1,525,498<br />(LDIR x 4.0)|
|zx7|dzx7_standard|             69|          6,532<br />(39.86%)|      1,983,679<br />(LDIR x 5.2)|
|zx7b|dzx7b_fast|            191|          6,591<br />(40.22%)|      1,161,342<br />(LDIR x 3.0)|
|zx7b|dzx7b_fast_r800|            191|          6,591<br />(40.22%)|      1,161,342<br />(LDIR x 3.0)|
|zx7b|dzx7b_slow|             64|          6,591<br />(40.22%)|      1,765,077<br />(LDIR x 4.6)|
|zx7b|dzx7b_slow_r800|             64|          6,591<br />(40.22%)|      1,765,077<br />(LDIR x 4.6)|



test data:KANJJ1.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|          3,975<br />(24.26%)|      3,493,148<br />(LDIR x 9.2)|
|Exomizer2|deexo_180|            166|          3,975<br />(24.26%)|      3,493,202<br />(LDIR x 9.2)|
|Exomizer2|deexo_180_fast_jp|            176|          3,975<br />(24.26%)|      3,025,459<br />(LDIR x 8.0)|
|Exomizer2|deexoopt_f3_180_p0|            242|          3,975<br />(24.26%)|      2,456,792<br />(LDIR x 6.5)|
|Exomizer3|deexo3p7|            176|          3,974<br />(24.25%)|      2,708,049<br />(LDIR x 7.1)|
|Exomizer3|deexo3p7_fast_jp|            181|          3,974<br />(24.25%)|      2,345,386<br />(LDIR x 6.2)|
|Exomizer3|deexo3|            197|          3,974<br />(24.25%)|      2,448,056<br />(LDIR x 6.4)|
|Exomizer3|deexoopt_p7|            219|          3,974<br />(24.25%)|      2,176,336<br />(LDIR x 5.7)|
|Exomizer3|deexoopt_f3_p7|            212|          3,974<br />(24.25%)|      2,096,142<br />(LDIR x 5.5)|
|Exomizer3|deexoopt_f3_180_p7|            219|          3,974<br />(24.25%)|      2,170,705<br />(LDIR x 5.7)|
|hrust|dehrust_ix|            234|          4,230<br />(25.81%)|      1,820,188<br />(LDIR x 4.8)|
|hrust|dehrust_stk|            209|          4,230<br />(25.81%)|      1,692,991<br />(LDIR x 4.4)|
|lz4|lz4dec|             97|          5,431<br />(33.14%)|        676,661<br />(LDIR x 1.7)|
|lz4|lz4dec_ram|            100|          5,431<br />(33.14%)|        655,117<br />(LDIR x 1.7)|
|lz4|lz4dec_rom|            100|          5,431<br />(33.14%)|        665,122<br />(LDIR x 1.7)|
|lz4|unlz4_stephenw32768|             72|          5,431<br />(33.14%)|        648,726<br />(LDIR x 1.7)|
|lz4|unlz4_drapich|            251|          5,431<br />(33.14%)|        642,229<br />(LDIR x 1.7)|
|lz4|unlz4_spke|            103|          5,431<br />(33.14%)|        626,665<br />(LDIR x 1.6)|
|lz4|unlz4_spke_ur|            100|          5,431<br />(33.14%)|        611,680<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006|             84|          5,532<br />(33.76%)|        669,209<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|          5,532<br />(33.76%)|        654,070<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|          5,532<br />(33.76%)|        648,433<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|          5,240<br />(31.98%)|        714,209<br />(LDIR x 1.8)|
|lz49|lz49decrunch_v001_180|            108|          5,240<br />(31.98%)|        696,524<br />(LDIR x 1.8)|
|lze|lzdec|            119|          4,664<br />(28.46%)|        907,166<br />(LDIR x 2.4)|
|lze|lzdec_104|            104|          4,664<br />(28.46%)|        838,447<br />(LDIR x 2.2)|
|lzee|lzee_dec_area|             88|          4,660<br />(28.44%)|        976,705<br />(LDIR x 2.5)|
|lzee|lzee_dec_speed|            102|          4,660<br />(28.44%)|        808,991<br />(LDIR x 2.1)|
|lzsa1|unlzsa1_fast_v1|            111|          4,805<br />(29.32%)|        595,743<br />(LDIR x 1.5)|
|lzsa1|unlzsa1_small_v1|             68|          4,805<br />(29.32%)|        652,759<br />(LDIR x 1.7)|
|lzsa2|unlzsa2_fast_v1|            214|          4,293<br />(26.20%)|        800,286<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_fast_v1_180|            212|          4,293<br />(26.20%)|        811,902<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_small_v1|            140|          4,293<br />(26.20%)|        881,086<br />(LDIR x 2.3)|
|lzsa2|unlzsa2_small_v1_180|            138|          4,293<br />(26.20%)|        892,702<br />(LDIR x 2.3)|
|MegaLZ|megalz_dec40|            110|          4,320<br />(26.36%)|      1,795,413<br />(LDIR x 4.7)|
|MegaLZ|unmegalz_fast_v2|            233|          4,320<br />(26.36%)|        969,230<br />(LDIR x 2.5)|
|MegaLZ|unmegalz_small_v2|             92|          4,320<br />(26.36%)|      1,383,479<br />(LDIR x 3.6)|
|Pletter|unpletter|            170|          4,269<br />(26.05%)|      1,106,926<br />(LDIR x 2.9)|
|Pletter|unpletter_180|            169|          4,269<br />(26.05%)|      1,104,864<br />(LDIR x 2.9)|
|Shrinkler|shrinkler_recall_209|            209|          3,700<br />(22.58%)|     65,685,212<br />(LDIR x 174.3)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          3,700<br />(22.58%)|     65,481,435<br />(LDIR x 173.7)|
|zx7|dzx7_lom_v1|            214|          4,401<br />(26.86%)|      1,054,761<br />(LDIR x 2.7)|
|zx7|dzx7_mega|            244|          4,401<br />(26.86%)|      1,105,818<br />(LDIR x 2.9)|
|zx7|dzx7_turbo|             88|          4,401<br />(26.86%)|      1,182,380<br />(LDIR x 3.1)|
|zx7|dzx7_standard|             69|          4,401<br />(26.86%)|      1,499,336<br />(LDIR x 3.9)|
|zx7b|dzx7b_fast|            191|          4,424<br />(27.00%)|        930,945<br />(LDIR x 2.4)|
|zx7b|dzx7b_fast_r800|            191|          4,424<br />(27.00%)|        930,945<br />(LDIR x 2.4)|
|zx7b|dzx7b_slow|             64|          4,424<br />(27.00%)|      1,349,287<br />(LDIR x 3.5)|
|zx7b|dzx7b_slow_r800|             64|          4,424<br />(27.00%)|      1,349,287<br />(LDIR x 3.5)|



test data:KANJJ1.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,688<br />(65.23%)|      7,768,783<br />(LDIR x 20.6)|
|Exomizer2|deexo_180|            166|         10,688<br />(65.23%)|      7,768,753<br />(LDIR x 20.6)|
|Exomizer2|deexo_180_fast_jp|            176|         10,688<br />(65.23%)|      6,631,200<br />(LDIR x 17.5)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,688<br />(65.23%)|      5,287,280<br />(LDIR x 14.0)|
|Exomizer3|deexo3p7|            176|         10,688<br />(65.23%)|      5,531,415<br />(LDIR x 14.6)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,688<br />(65.23%)|      4,754,980<br />(LDIR x 12.6)|
|Exomizer3|deexo3|            197|         10,688<br />(65.23%)|      4,974,849<br />(LDIR x 13.2)|
|Exomizer3|deexoopt_p7|            219|         10,688<br />(65.23%)|      4,341,061<br />(LDIR x 11.5)|
|Exomizer3|deexoopt_f3_p7|            212|         10,688<br />(65.23%)|      4,174,824<br />(LDIR x 11.0)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,688<br />(65.23%)|      4,347,582<br />(LDIR x 11.5)|
|hrust|dehrust_ix|            234|         10,940<br />(66.77%)|      3,282,337<br />(LDIR x 8.7)|
|hrust|dehrust_stk|            209|         10,940<br />(66.77%)|      2,988,194<br />(LDIR x 7.9)|
|lz4|lz4dec|             97|         13,003<br />(79.36%)|        789,201<br />(LDIR x 2.0)|
|lz4|lz4dec_ram|            100|         13,003<br />(79.36%)|        758,913<br />(LDIR x 2.0)|
|lz4|lz4dec_rom|            100|         13,003<br />(79.36%)|        772,318<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|         13,003<br />(79.36%)|        755,216<br />(LDIR x 2.0)|
|lz4|unlz4_drapich|            251|         13,003<br />(79.36%)|        740,409<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|         13,003<br />(79.36%)|        717,211<br />(LDIR x 1.9)|
|lz4|unlz4_spke_ur|            100|         13,003<br />(79.36%)|        697,126<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|         14,290<br />(87.21%)|        662,376<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|         14,290<br />(87.21%)|        656,629<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|         14,290<br />(87.21%)|        648,620<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|         13,985<br />(85.35%)|        783,598<br />(LDIR x 2.0)|
|lz49|lz49decrunch_v001_180|            108|         13,985<br />(85.35%)|        765,361<br />(LDIR x 2.0)|
|lze|lzdec|            119|         11,696<br />(71.38%)|      1,503,720<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         11,696<br />(71.38%)|      1,377,399<br />(LDIR x 3.6)|
|lzee|lzee_dec_area|             88|         11,692<br />(71.36%)|      1,719,598<br />(LDIR x 4.5)|
|lzee|lzee_dec_speed|            102|         11,692<br />(71.36%)|      1,323,812<br />(LDIR x 3.5)|
|lzsa1|unlzsa1_fast_v1|            111|         12,544<br />(76.56%)|        724,777<br />(LDIR x 1.9)|
|lzsa1|unlzsa1_small_v1|             68|         12,544<br />(76.56%)|        813,839<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_fast_v1|            214|         11,396<br />(69.55%)|      1,183,439<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,396<br />(69.55%)|      1,204,831<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_small_v1|            140|         11,396<br />(69.55%)|      1,345,570<br />(LDIR x 3.5)|
|lzsa2|unlzsa2_small_v1_180|            138|         11,396<br />(69.55%)|      1,366,962<br />(LDIR x 3.6)|
|MegaLZ|megalz_dec40|            110|         11,362<br />(69.34%)|      3,337,759<br />(LDIR x 8.8)|
|MegaLZ|unmegalz_fast_v2|            233|         11,362<br />(69.34%)|      1,498,314<br />(LDIR x 3.9)|
|MegaLZ|unmegalz_small_v2|             92|         11,362<br />(69.34%)|      2,398,346<br />(LDIR x 6.3)|
|Pletter|unpletter|            170|         11,340<br />(69.21%)|      2,176,730<br />(LDIR x 5.7)|
|Pletter|unpletter_180|            169|         11,340<br />(69.21%)|      2,171,638<br />(LDIR x 5.7)|
|Shrinkler|shrinkler_recall_209|            209|         10,212<br />(62.32%)|    184,251,287<br />(LDIR x 488.9)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         10,212<br />(62.32%)|    183,705,317<br />(LDIR x 487.4)|
|zx7|dzx7_lom_v1|            214|         11,623<br />(70.94%)|      1,725,942<br />(LDIR x 4.5)|
|zx7|dzx7_mega|            244|         11,623<br />(70.94%)|      1,831,828<br />(LDIR x 4.8)|
|zx7|dzx7_turbo|             88|         11,623<br />(70.94%)|      2,018,166<br />(LDIR x 5.3)|
|zx7|dzx7_standard|             69|         11,623<br />(70.94%)|      2,747,252<br />(LDIR x 7.2)|
|zx7b|dzx7b_fast|            191|         11,629<br />(70.97%)|      1,530,270<br />(LDIR x 4.0)|
|zx7b|dzx7b_fast_r800|            191|         11,629<br />(70.97%)|      1,530,270<br />(LDIR x 4.0)|
|zx7b|dzx7b_slow|             64|         11,629<br />(70.97%)|      2,506,048<br />(LDIR x 6.6)|
|zx7b|dzx7b_slow_r800|             64|         11,629<br />(70.97%)|      2,506,048<br />(LDIR x 6.6)|



test data:KANJJ1.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,510<br />(64.14%)|      7,603,571<br />(LDIR x 20.1)|
|Exomizer2|deexo_180|            166|         10,510<br />(64.14%)|      7,603,537<br />(LDIR x 20.1)|
|Exomizer2|deexo_180_fast_jp|            176|         10,510<br />(64.14%)|      6,486,424<br />(LDIR x 17.2)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,510<br />(64.14%)|      5,177,222<br />(LDIR x 13.7)|
|Exomizer3|deexo3p7|            176|         10,509<br />(64.14%)|      5,446,711<br />(LDIR x 14.4)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,509<br />(64.14%)|      4,671,690<br />(LDIR x 12.3)|
|Exomizer3|deexo3|            197|         10,509<br />(64.14%)|      4,889,398<br />(LDIR x 12.9)|
|Exomizer3|deexoopt_p7|            219|         10,509<br />(64.14%)|      4,275,571<br />(LDIR x 11.3)|
|Exomizer3|deexoopt_f3_p7|            212|         10,509<br />(64.14%)|      4,114,737<br />(LDIR x 10.9)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,509<br />(64.14%)|      4,282,206<br />(LDIR x 11.3)|
|hrust|dehrust_ix|            234|         10,753<br />(65.63%)|      3,241,681<br />(LDIR x 8.6)|
|hrust|dehrust_stk|            209|         10,753<br />(65.63%)|      2,951,087<br />(LDIR x 7.8)|
|lz4|lz4dec|             97|         12,732<br />(77.70%)|        785,163<br />(LDIR x 2.0)|
|lz4|lz4dec_ram|            100|         12,732<br />(77.70%)|        755,395<br />(LDIR x 2.0)|
|lz4|lz4dec_rom|            100|         12,732<br />(77.70%)|        768,780<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|         12,732<br />(77.70%)|        749,732<br />(LDIR x 1.9)|
|lz4|unlz4_drapich|            251|         12,732<br />(77.70%)|        735,920<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|         12,732<br />(77.70%)|        714,143<br />(LDIR x 1.8)|
|lz4|unlz4_spke_ur|            100|         12,732<br />(77.70%)|        694,088<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|         14,024<br />(85.59%)|        676,681<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|         14,024<br />(85.59%)|        668,286<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|         14,024<br />(85.59%)|        660,487<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|         13,761<br />(83.99%)|        786,435<br />(LDIR x 2.0)|
|lz49|lz49decrunch_v001_180|            108|         13,761<br />(83.99%)|        767,620<br />(LDIR x 2.0)|
|lze|lzdec|            119|         11,493<br />(70.14%)|      1,480,718<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         11,493<br />(70.14%)|      1,357,652<br />(LDIR x 3.6)|
|lzee|lzee_dec_area|             88|         11,489<br />(70.12%)|      1,688,902<br />(LDIR x 4.4)|
|lzee|lzee_dec_speed|            102|         11,489<br />(70.12%)|      1,304,107<br />(LDIR x 3.4)|
|lzsa1|unlzsa1_fast_v1|            111|         12,253<br />(74.78%)|        730,063<br />(LDIR x 1.9)|
|lzsa1|unlzsa1_small_v1|             68|         12,253<br />(74.78%)|        821,531<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_fast_v1|            214|         11,137<br />(67.97%)|      1,150,950<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,137<br />(67.97%)|      1,171,638<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_small_v1|            140|         11,137<br />(67.97%)|      1,305,003<br />(LDIR x 3.4)|
|lzsa2|unlzsa2_small_v1_180|            138|         11,137<br />(67.97%)|      1,325,691<br />(LDIR x 3.5)|
|MegaLZ|megalz_dec40|            110|         11,161<br />(68.12%)|      3,294,363<br />(LDIR x 8.7)|
|MegaLZ|unmegalz_fast_v2|            233|         11,161<br />(68.12%)|      1,485,045<br />(LDIR x 3.9)|
|MegaLZ|unmegalz_small_v2|             92|         11,161<br />(68.12%)|      2,371,355<br />(LDIR x 6.2)|
|Pletter|unpletter|            170|         11,105<br />(67.77%)|      2,137,378<br />(LDIR x 5.6)|
|Pletter|unpletter_180|            169|         11,105<br />(67.77%)|      2,132,416<br />(LDIR x 5.6)|
|Shrinkler|shrinkler_recall_209|            209|         10,020<br />(61.15%)|    181,710,794<br />(LDIR x 482.1)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         10,020<br />(61.15%)|    181,175,720<br />(LDIR x 480.7)|
|zx7|dzx7_lom_v1|            214|         11,436<br />(69.79%)|      1,710,251<br />(LDIR x 4.5)|
|zx7|dzx7_mega|            244|         11,436<br />(69.79%)|      1,812,558<br />(LDIR x 4.8)|
|zx7|dzx7_turbo|             88|         11,436<br />(69.79%)|      1,999,268<br />(LDIR x 5.3)|
|zx7|dzx7_standard|             69|         11,436<br />(69.79%)|      2,721,231<br />(LDIR x 7.2)|
|zx7b|dzx7b_fast|            191|         11,451<br />(69.89%)|      1,505,939<br />(LDIR x 3.9)|
|zx7b|dzx7b_fast_r800|            191|         11,451<br />(69.89%)|      1,505,939<br />(LDIR x 3.9)|
|zx7b|dzx7b_slow|             64|         11,451<br />(69.89%)|      2,465,218<br />(LDIR x 6.5)|
|zx7b|dzx7b_slow_r800|             64|         11,451<br />(69.89%)|      2,465,218<br />(LDIR x 6.5)|



test data:KANJJ1.B04(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,415<br />(63.56%)|      7,416,607<br />(LDIR x 19.6)|
|Exomizer2|deexo_180|            166|         10,415<br />(63.56%)|      7,416,561<br />(LDIR x 19.6)|
|Exomizer2|deexo_180_fast_jp|            176|         10,415<br />(63.56%)|      6,334,154<br />(LDIR x 16.8)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,415<br />(63.56%)|      5,057,178<br />(LDIR x 13.4)|
|Exomizer3|deexo3p7|            176|         10,415<br />(63.56%)|      5,360,921<br />(LDIR x 14.2)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,415<br />(63.56%)|      4,602,224<br />(LDIR x 12.2)|
|Exomizer3|deexo3|            197|         10,415<br />(63.56%)|      4,815,949<br />(LDIR x 12.7)|
|Exomizer3|deexoopt_p7|            219|         10,415<br />(63.56%)|      4,200,109<br />(LDIR x 11.1)|
|Exomizer3|deexoopt_f3_p7|            212|         10,415<br />(63.56%)|      4,039,310<br />(LDIR x 10.7)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,415<br />(63.56%)|      4,205,016<br />(LDIR x 11.1)|
|hrust|dehrust_ix|            234|         10,679<br />(65.17%)|      3,238,228<br />(LDIR x 8.5)|
|hrust|dehrust_stk|            209|         10,679<br />(65.17%)|      2,950,117<br />(LDIR x 7.8)|
|lz4|lz4dec|             97|         12,675<br />(77.36%)|        801,475<br />(LDIR x 2.1)|
|lz4|lz4dec_ram|            100|         12,675<br />(77.36%)|        770,443<br />(LDIR x 2.0)|
|lz4|lz4dec_rom|            100|         12,675<br />(77.36%)|        784,348<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|         12,675<br />(77.36%)|        765,061<br />(LDIR x 2.0)|
|lz4|unlz4_drapich|            251|         12,675<br />(77.36%)|        750,599<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|         12,675<br />(77.36%)|        727,687<br />(LDIR x 1.9)|
|lz4|unlz4_spke_ur|            100|         12,675<br />(77.36%)|        706,852<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|         13,960<br />(85.20%)|        681,024<br />(LDIR x 1.8)|
|lz48|lz48decrunch\_v006\_|             70|         13,960<br />(85.20%)|        673,078<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|         13,960<br />(85.20%)|        665,075<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|         13,717<br />(83.72%)|        784,719<br />(LDIR x 2.0)|
|lz49|lz49decrunch_v001_180|            108|         13,717<br />(83.72%)|        765,153<br />(LDIR x 2.0)|
|lze|lzdec|            119|         11,373<br />(69.41%)|      1,480,839<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         11,373<br />(69.41%)|      1,356,257<br />(LDIR x 3.5)|
|lzee|lzee_dec_area|             88|         11,369<br />(69.39%)|      1,687,826<br />(LDIR x 4.4)|
|lzee|lzee_dec_speed|            102|         11,369<br />(69.39%)|      1,302,881<br />(LDIR x 3.4)|
|lzsa1|unlzsa1_fast_v1|            111|         12,190<br />(74.40%)|        729,925<br />(LDIR x 1.9)|
|lzsa1|unlzsa1_small_v1|             68|         12,190<br />(74.40%)|        821,096<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_fast_v1|            214|         11,039<br />(67.37%)|      1,161,242<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,039<br />(67.37%)|      1,182,058<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_small_v1|            140|         11,039<br />(67.37%)|      1,319,030<br />(LDIR x 3.5)|
|lzsa2|unlzsa2_small_v1_180|            138|         11,039<br />(67.37%)|      1,339,846<br />(LDIR x 3.5)|
|MegaLZ|megalz_dec40|            110|         11,016<br />(67.23%)|      3,271,673<br />(LDIR x 8.6)|
|MegaLZ|unmegalz_fast_v2|            233|         11,016<br />(67.23%)|      1,479,510<br />(LDIR x 3.9)|
|MegaLZ|unmegalz_small_v2|             92|         11,016<br />(67.23%)|      2,355,764<br />(LDIR x 6.2)|
|Pletter|unpletter|            170|         10,992<br />(67.08%)|      2,130,343<br />(LDIR x 5.6)|
|Pletter|unpletter_180|            169|         10,992<br />(67.08%)|      2,125,041<br />(LDIR x 5.6)|
|Shrinkler|shrinkler_recall_209|            209|          9,876<br />(60.27%)|    179,896,027<br />(LDIR x 477.3)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          9,876<br />(60.27%)|    179,386,066<br />(LDIR x 476.0)|
|zx7|dzx7_lom_v1|            214|         11,337<br />(69.19%)|      1,707,459<br />(LDIR x 4.5)|
|zx7|dzx7_mega|            244|         11,337<br />(69.19%)|      1,811,811<br />(LDIR x 4.8)|
|zx7|dzx7_turbo|             88|         11,337<br />(69.19%)|      1,995,177<br />(LDIR x 5.2)|
|zx7|dzx7_standard|             69|         11,337<br />(69.19%)|      2,711,216<br />(LDIR x 7.1)|
|zx7b|dzx7b_fast|            191|         11,327<br />(69.13%)|      1,521,877<br />(LDIR x 4.0)|
|zx7b|dzx7b_fast_r800|            191|         11,327<br />(69.13%)|      1,521,877<br />(LDIR x 4.0)|
|zx7b|dzx7b_slow|             64|         11,327<br />(69.13%)|      2,488,567<br />(LDIR x 6.6)|
|zx7b|dzx7b_slow_r800|             64|         11,327<br />(69.13%)|      2,488,567<br />(LDIR x 6.6)|



test data:KANJJ1.B05(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,348<br />(63.15%)|      7,475,213<br />(LDIR x 19.8)|
|Exomizer2|deexo_180|            166|         10,348<br />(63.15%)|      7,475,183<br />(LDIR x 19.8)|
|Exomizer2|deexo_180_fast_jp|            176|         10,348<br />(63.15%)|      6,378,127<br />(LDIR x 16.9)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,348<br />(63.15%)|      5,088,918<br />(LDIR x 13.5)|
|Exomizer3|deexo3p7|            176|         10,347<br />(63.15%)|      5,383,242<br />(LDIR x 14.2)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,347<br />(63.15%)|      4,616,542<br />(LDIR x 12.2)|
|Exomizer3|deexo3|            197|         10,347<br />(63.15%)|      4,828,463<br />(LDIR x 12.8)|
|Exomizer3|deexoopt_p7|            219|         10,347<br />(63.15%)|      4,216,060<br />(LDIR x 11.1)|
|Exomizer3|deexoopt_f3_p7|            212|         10,347<br />(63.15%)|      4,056,164<br />(LDIR x 10.7)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,347<br />(63.15%)|      4,221,173<br />(LDIR x 11.2)|
|hrust|dehrust_ix|            234|         10,597<br />(64.67%)|      3,215,584<br />(LDIR x 8.5)|
|hrust|dehrust_stk|            209|         10,597<br />(64.67%)|      2,927,176<br />(LDIR x 7.7)|
|lz4|lz4dec|             97|         12,535<br />(76.50%)|        792,937<br />(LDIR x 2.1)|
|lz4|lz4dec_ram|            100|         12,535<br />(76.50%)|        762,481<br />(LDIR x 2.0)|
|lz4|lz4dec_rom|            100|         12,535<br />(76.50%)|        776,106<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|         12,535<br />(76.50%)|        757,480<br />(LDIR x 2.0)|
|lz4|unlz4_drapich|            251|         12,535<br />(76.50%)|        743,342<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|         12,535<br />(76.50%)|        720,751<br />(LDIR x 1.9)|
|lz4|unlz4_spke_ur|            100|         12,535<br />(76.50%)|        700,336<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|         13,952<br />(85.15%)|        675,287<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|         13,952<br />(85.15%)|        667,919<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|         13,952<br />(85.15%)|        659,949<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|         13,674<br />(83.45%)|        789,919<br />(LDIR x 2.0)|
|lz49|lz49decrunch_v001_180|            108|         13,674<br />(83.45%)|        770,668<br />(LDIR x 2.0)|
|lze|lzdec|            119|         11,283<br />(68.86%)|      1,468,273<br />(LDIR x 3.8)|
|lze|lzdec_104|            104|         11,283<br />(68.86%)|      1,345,731<br />(LDIR x 3.5)|
|lzee|lzee_dec_area|             88|         11,279<br />(68.84%)|      1,670,829<br />(LDIR x 4.4)|
|lzee|lzee_dec_speed|            102|         11,279<br />(68.84%)|      1,292,271<br />(LDIR x 3.4)|
|lzsa1|unlzsa1_fast_v1|            111|         12,075<br />(73.69%)|        733,850<br />(LDIR x 1.9)|
|lzsa1|unlzsa1_small_v1|             68|         12,075<br />(73.69%)|        826,010<br />(LDIR x 2.1)|
|lzsa2|unlzsa2_fast_v1|            214|         10,933<br />(66.72%)|      1,157,005<br />(LDIR x 3.0)|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,933<br />(66.72%)|      1,177,781<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_small_v1|            140|         10,933<br />(66.72%)|      1,313,443<br />(LDIR x 3.4)|
|lzsa2|unlzsa2_small_v1_180|            138|         10,933<br />(66.72%)|      1,334,219<br />(LDIR x 3.5)|
|MegaLZ|megalz_dec40|            110|         11,012<br />(67.21%)|      3,284,220<br />(LDIR x 8.7)|
|MegaLZ|unmegalz_fast_v2|            233|         11,012<br />(67.21%)|      1,484,175<br />(LDIR x 3.9)|
|MegaLZ|unmegalz_small_v2|             92|         11,012<br />(67.21%)|      2,369,275<br />(LDIR x 6.2)|
|Pletter|unpletter|            170|         10,908<br />(66.57%)|      2,106,071<br />(LDIR x 5.5)|
|Pletter|unpletter_180|            169|         10,908<br />(66.57%)|      2,101,239<br />(LDIR x 5.5)|
|Shrinkler|shrinkler_recall_209|            209|          9,808<br />(59.86%)|    178,129,932<br />(LDIR x 472.6)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          9,808<br />(59.86%)|    177,607,019<br />(LDIR x 471.3)|
|zx7|dzx7_lom_v1|            214|         11,331<br />(69.15%)|      1,699,269<br />(LDIR x 4.5)|
|zx7|dzx7_mega|            244|         11,331<br />(69.15%)|      1,799,881<br />(LDIR x 4.7)|
|zx7|dzx7_turbo|             88|         11,331<br />(69.15%)|      1,984,344<br />(LDIR x 5.2)|
|zx7|dzx7_standard|             69|         11,331<br />(69.15%)|      2,693,915<br />(LDIR x 7.1)|
|zx7b|dzx7b_fast|            191|         11,341<br />(69.21%)|      1,500,846<br />(LDIR x 3.9)|
|zx7b|dzx7b_fast_r800|            191|         11,341<br />(69.21%)|      1,500,846<br />(LDIR x 3.9)|
|zx7b|dzx7b_slow|             64|         11,341<br />(69.21%)|      2,450,589<br />(LDIR x 6.5)|
|zx7b|dzx7b_slow_r800|             64|         11,341<br />(69.21%)|      2,450,589<br />(LDIR x 6.5)|



test data:KANJJ1.B06(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|         10,650<br />(65.00%)|      7,752,805<br />(LDIR x 20.5)|
|Exomizer2|deexo_180|            166|         10,650<br />(65.00%)|      7,752,735<br />(LDIR x 20.5)|
|Exomizer2|deexo_180_fast_jp|            176|         10,650<br />(65.00%)|      6,611,348<br />(LDIR x 17.5)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,650<br />(65.00%)|      5,263,931<br />(LDIR x 13.9)|
|Exomizer3|deexo3p7|            176|         10,650<br />(65.00%)|      5,584,601<br />(LDIR x 14.8)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,650<br />(65.00%)|      4,783,085<br />(LDIR x 12.6)|
|Exomizer3|deexo3|            197|         10,650<br />(65.00%)|      5,001,850<br />(LDIR x 13.2)|
|Exomizer3|deexoopt_p7|            219|         10,650<br />(65.00%)|      4,366,865<br />(LDIR x 11.5)|
|Exomizer3|deexoopt_f3_p7|            212|         10,650<br />(65.00%)|      4,201,463<br />(LDIR x 11.1)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,650<br />(65.00%)|      4,371,843<br />(LDIR x 11.6)|
|hrust|dehrust_ix|            234|         10,906<br />(66.56%)|      3,290,847<br />(LDIR x 8.7)|
|hrust|dehrust_stk|            209|         10,906<br />(66.56%)|      2,995,867<br />(LDIR x 7.9)|
|lz4|lz4dec|             97|         12,975<br />(79.19%)|        796,256<br />(LDIR x 2.1)|
|lz4|lz4dec_ram|            100|         12,975<br />(79.19%)|        765,208<br />(LDIR x 2.0)|
|lz4|lz4dec_rom|            100|         12,975<br />(79.19%)|        778,893<br />(LDIR x 2.0)|
|lz4|unlz4_stephenw32768|             72|         12,975<br />(79.19%)|        762,387<br />(LDIR x 2.0)|
|lz4|unlz4_drapich|            251|         12,975<br />(79.19%)|        747,635<br />(LDIR x 1.9)|
|lz4|unlz4_spke|            103|         12,975<br />(79.19%)|        723,843<br />(LDIR x 1.9)|
|lz4|unlz4_spke_ur|            100|         12,975<br />(79.19%)|        703,338<br />(LDIR x 1.8)|
|lz48|lz48decrunch_v006|             84|         14,179<br />(86.54%)|        662,958<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|         14,179<br />(86.54%)|        656,277<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006__180|             74|         14,179<br />(86.54%)|        648,507<br />(LDIR x 1.7)|
|lz49|lz49decrunch_v001|            106|         13,920<br />(84.96%)|        774,080<br />(LDIR x 2.0)|
|lz49|lz49decrunch_v001_180|            108|         13,920<br />(84.96%)|        755,633<br />(LDIR x 2.0)|
|lze|lzdec|            119|         11,634<br />(71.00%)|      1,504,858<br />(LDIR x 3.9)|
|lze|lzdec_104|            104|         11,634<br />(71.00%)|      1,377,964<br />(LDIR x 3.6)|
|lzee|lzee_dec_area|             88|         11,630<br />(70.98%)|      1,713,147<br />(LDIR x 4.5)|
|lzee|lzee_dec_speed|            102|         11,630<br />(70.98%)|      1,322,396<br />(LDIR x 3.5)|
|lzsa1|unlzsa1_fast_v1|            111|         12,508<br />(76.34%)|        739,741<br />(LDIR x 1.9)|
|lzsa1|unlzsa1_small_v1|             68|         12,508<br />(76.34%)|        832,987<br />(LDIR x 2.2)|
|lzsa2|unlzsa2_fast_v1|            214|         11,358<br />(69.32%)|      1,178,296<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,358<br />(69.32%)|      1,199,624<br />(LDIR x 3.1)|
|lzsa2|unlzsa2_small_v1|            140|         11,358<br />(69.32%)|      1,339,038<br />(LDIR x 3.5)|
|lzsa2|unlzsa2_small_v1_180|            138|         11,358<br />(69.32%)|      1,360,366<br />(LDIR x 3.6)|
|MegaLZ|megalz_dec40|            110|         11,281<br />(68.85%)|      3,337,059<br />(LDIR x 8.8)|
|MegaLZ|unmegalz_fast_v2|            233|         11,281<br />(68.85%)|      1,499,052<br />(LDIR x 3.9)|
|MegaLZ|unmegalz_small_v2|             92|         11,281<br />(68.85%)|      2,399,747<br />(LDIR x 6.3)|
|Pletter|unpletter|            170|         11,252<br />(68.67%)|      2,178,723<br />(LDIR x 5.7)|
|Pletter|unpletter_180|            169|         11,252<br />(68.67%)|      2,173,801<br />(LDIR x 5.7)|
|Shrinkler|shrinkler_recall_209|            209|         10,148<br />(61.93%)|    184,730,043<br />(LDIR x 490.2)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|         10,148<br />(61.93%)|    184,196,461<br />(LDIR x 488.7)|
|zx7|dzx7_lom_v1|            214|         11,612<br />(70.87%)|      1,725,304<br />(LDIR x 4.5)|
|zx7|dzx7_mega|            244|         11,612<br />(70.87%)|      1,827,389<br />(LDIR x 4.8)|
|zx7|dzx7_turbo|             88|         11,612<br />(70.87%)|      2,015,890<br />(LDIR x 5.3)|
|zx7|dzx7_standard|             69|         11,612<br />(70.87%)|      2,745,472<br />(LDIR x 7.2)|
|zx7b|dzx7b_fast|            191|         11,601<br />(70.80%)|      1,529,557<br />(LDIR x 4.0)|
|zx7b|dzx7b_fast_r800|            191|         11,601<br />(70.80%)|      1,529,557<br />(LDIR x 4.0)|
|zx7b|dzx7b_slow|             64|         11,601<br />(70.80%)|      2,506,261<br />(LDIR x 6.6)|
|zx7b|dzx7b_slow_r800|             64|         11,601<br />(70.80%)|      2,506,261<br />(LDIR x 6.6)|



test data:KANJJ1.B07(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
||Exomizer2|deexo|            169|          9,701<br />(59.21%)|      7,135,248<br />(LDIR x 18.9)|
|Exomizer2|deexo_180|            166|          9,701<br />(59.21%)|      7,135,142<br />(LDIR x 18.9)|
|Exomizer2|deexo_180_fast_jp|            176|          9,701<br />(59.21%)|      6,094,613<br />(LDIR x 16.1)|
|Exomizer2|deexoopt_f3_180_p0|            242|          9,701<br />(59.21%)|      4,868,668<br />(LDIR x 12.9)|
|Exomizer3|deexo3p7|            176|          9,701<br />(59.21%)|      5,093,013<br />(LDIR x 13.5)|
|Exomizer3|deexo3p7_fast_jp|            181|          9,701<br />(59.21%)|      4,381,376<br />(LDIR x 11.6)|
|Exomizer3|deexo3|            197|          9,701<br />(59.21%)|      4,582,788<br />(LDIR x 12.1)|
|Exomizer3|deexoopt_p7|            219|          9,701<br />(59.21%)|      4,006,872<br />(LDIR x 10.6)|
|Exomizer3|deexoopt_f3_p7|            212|          9,701<br />(59.21%)|      3,855,266<br />(LDIR x 10.2)|
|Exomizer3|deexoopt_f3_180_p7|            219|          9,701<br />(59.21%)|      4,012,895<br />(LDIR x 10.6)|
|hrust|dehrust_ix|            234|          9,937<br />(60.65%)|      3,015,024<br />(LDIR x 8.0)|
|hrust|dehrust_stk|            209|          9,937<br />(60.65%)|      2,749,638<br />(LDIR x 7.2)|
|lz4|lz4dec|             97|         11,831<br />(72.21%)|        742,410<br />(LDIR x 1.9)|
|lz4|lz4dec_ram|            100|         11,831<br />(72.21%)|        715,578<br />(LDIR x 1.8)|
|lz4|lz4dec_rom|            100|         11,831<br />(72.21%)|        727,433<br />(LDIR x 1.9)|
|lz4|unlz4_stephenw32768|             72|         11,831<br />(72.21%)|        712,576<br />(LDIR x 1.8)|
|lz4|unlz4_drapich|            251|         11,831<br />(72.21%)|        699,440<br />(LDIR x 1.8)|
|lz4|unlz4_spke|            103|         11,831<br />(72.21%)|        678,627<br />(LDIR x 1.8)|
|lz4|unlz4_spke_ur|            100|         11,831<br />(72.21%)|        660,867<br />(LDIR x 1.7)|
|lz48|lz48decrunch_v006|             84|         13,048<br />(79.63%)|        641,904<br />(LDIR x 1.7)|
|lz48|lz48decrunch\_v006\_|             70|         13,048<br />(79.63%)|        634,564<br />(LDIR x 1.6)|
|lz48|lz48decrunch_v006__180|             74|         13,048<br />(79.63%)|        627,574<br />(LDIR x 1.6)|
|lz49|lz49decrunch_v001|            106|         12,778<br />(77.99%)|        736,853<br />(LDIR x 1.9)|
|lz49|lz49decrunch_v001_180|            108|         12,778<br />(77.99%)|        719,862<br />(LDIR x 1.9)|
|lze|lzdec|            119|         10,578<br />(64.56%)|      1,393,220<br />(LDIR x 3.6)|
|lze|lzdec_104|            104|         10,578<br />(64.56%)|      1,279,686<br />(LDIR x 3.3)|
|lzee|lzee_dec_area|             88|         10,574<br />(64.53%)|      1,586,959<br />(LDIR x 4.2)|
|lzee|lzee_dec_speed|            102|         10,574<br />(64.53%)|      1,231,106<br />(LDIR x 3.2)|
|lzsa1|unlzsa1_fast_v1|            111|         11,389<br />(69.51%)|        700,114<br />(LDIR x 1.8)|
|lzsa1|unlzsa1_small_v1|             68|         11,389<br />(69.51%)|        782,921<br />(LDIR x 2.0)|
|lzsa2|unlzsa2_fast_v1|            214|         10,343<br />(63.12%)|      1,097,922<br />(LDIR x 2.9)|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,343<br />(63.12%)|      1,117,042<br />(LDIR x 2.9)|
|lzsa2|unlzsa2_small_v1|            140|         10,343<br />(63.12%)|      1,243,847<br />(LDIR x 3.3)|
|lzsa2|unlzsa2_small_v1_180|            138|         10,343<br />(63.12%)|      1,262,967<br />(LDIR x 3.3)|
|MegaLZ|megalz_dec40|            110|         10,247<br />(62.54%)|      3,070,083<br />(LDIR x 8.1)|
|MegaLZ|unmegalz_fast_v2|            233|         10,247<br />(62.54%)|      1,401,983<br />(LDIR x 3.7)|
|MegaLZ|unmegalz_small_v2|             92|         10,247<br />(62.54%)|      2,224,451<br />(LDIR x 5.9)|
|Pletter|unpletter|            170|         10,245<br />(62.53%)|      1,996,630<br />(LDIR x 5.2)|
|Pletter|unpletter_180|            169|         10,245<br />(62.53%)|      1,992,358<br />(LDIR x 5.2)|
|Shrinkler|shrinkler_recall_209|            209|          9,212<br />(56.22%)|    166,951,906<br />(LDIR x 443.0)|
|Shrinkler|shrinkler_recall_209_r800_rom|            209|          9,212<br />(56.22%)|    166,474,577<br />(LDIR x 441.7)|
|zx7|dzx7_lom_v1|            214|         10,572<br />(64.52%)|      1,611,251<br />(LDIR x 4.2)|
|zx7|dzx7_mega|            244|         10,572<br />(64.52%)|      1,707,869<br />(LDIR x 4.5)|
|zx7|dzx7_turbo|             88|         10,572<br />(64.52%)|      1,878,347<br />(LDIR x 4.9)|
|zx7|dzx7_standard|             69|         10,572<br />(64.52%)|      2,546,593<br />(LDIR x 6.7)|
|zx7b|dzx7b_fast|            191|         10,586<br />(64.61%)|      1,431,824<br />(LDIR x 3.7)|
|zx7b|dzx7b_fast_r800|            191|         10,586<br />(64.61%)|      1,431,824<br />(LDIR x 3.7)|
|zx7b|dzx7b_slow|             64|         10,586<br />(64.61%)|      2,328,107<br />(LDIR x 6.1)|
|zx7b|dzx7b_slow_r800|             64|         10,586<br />(64.61%)|      2,328,107<br />(LDIR x 6.1)|




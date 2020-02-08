
# Depackers for Z80

## Packers

### [ApLib](http://ibsensoftware.com/products_aPLib.html) - [cap raw format support version](https://github.com/uniabis/cap) v1.2(er)

[appack_r57shell](http://hypr.ru/blog/dev/740.html)

[apultra](https://github.com/emmanuel-marty/apultra)

[cap](https://github.com/svendahl/cap)

[cap raw format support version](https://github.com/uniabis/cap)

### [Exomizer2](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P0)

License:LGPL

### [Exomizer3](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P7)

License:LGPL

[deexoopt](https://github.com/antoniovillena/deexo)

### hruST - [oh1c spke version](http://hypr.ru/blog/dev/740.html) 1.3 (-r)

[mhmt](https://github.com/lvd2/mhmt) License:GPLv3

[mhmt google code archive](https://code.google.com/archive/p/mhmt/source/default/source)

[oh1c](https://gitlab.com/eugene77/optimal-hrust-compressor/)

[oh1c(old)](https://zx-pk.ru/threads/23111-szhatie-i-upakovka-hrum3-5-hrust1-hrust2-laser-compact-x-x.html?p=787697&viewfull=1#post787697)

[oh1c spke version with raw format support](http://hypr.ru/blog/dev/740.html) in [compression2017.7z](http://introspec.retroscene.org/hype/compression2017.7z)

### [LZ4](https://github.com/lz4/lz4) - [smalLZ4](https://create.stephan-brumme.com/smallz4/) v1.3.1

[lz4ultra](https://github.com/emmanuel-marty/lz4ultra)

[smalLZ4](https://create.stephan-brumme.com/smallz4/)

[lz4stream for Z80](http://mydocuments.g2.xrea.com/html/p6/randd.html)

### [LZ48/49](http://www.cpcwiki.eu/forum/programming/lz48-cruncherdecruncher/)

### [LZE](http://gorry.haun.org/pw/?lze) 20080228a

[LZEe - LZE enhancement for z80](https://github.com/uniabis/lzee)

### [lzsa1](https://github.com/emmanuel-marty/lzsa) 1.2.0(-f1 -r)

License:zlib

### [lzsa2](https://github.com/emmanuel-marty/lzsa) 1.2.0(-f2 -r)

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

### [zx7mini](https://github.com/antoniovillena/zx7mini) v1.01(back)

## Compressed size



test data:DEOCM-PLD-CV BIOS(16x16KB)

|Packer|ALL|MEGASDHC.B00|MEGASDHC.B01|MEGASDHC.B02|MEGASDHC.B03|MSX2MAIN.B00|MSX2MAIN.B01|MSXMUSIC.B00|MSX2EXT.B00|KANJJ1.B00|KANJJ1.B01|KANJJ1.B02|KANJJ1.B03|KANJJ1.B04|KANJJ1.B05|KANJJ1.B06|KANJJ1.B07|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|ApLib<br />(cap er)|161,438<br />(61.58%)|9,367<br />(57.17%)|4,928<br />(30.08%)|12,595<br />(76.87%)|12,340<br />(75.32%)|12,836<br />(78.34%)|13,579<br />(82.88%)|10,048<br />(61.33%)|12,361<br />(75.45%)|6,223<br />(37.98%)|4,092<br />(24.98%)|10,835<br />(66.13%)|10,643<br />(64.96%)|10,521<br />(64.22%)|10,455<br />(63.81%)|10,817<br />(66.02%)|9,798<br />(59.80%)|
|Exomizer2<br />(-P0)|160,011<br />(61.04%)|9,373<br />(57.21%)|4,902<br />(29.92%)|12,494<br />(76.26%)|12,297<br />(75.05%)|12,740<br />(77.76%)|13,402<br />(81.80%)|10,068<br />(61.45%)|12,351<br />(75.38%)|6,097<br />(37.21%)|3,975<br />(24.26%)|10,688<br />(65.23%)|10,510<br />(64.15%)|10,415<br />(63.57%)|10,348<br />(63.16%)|10,650<br />(65.00%)|9,701<br />(59.21%)|
|Exomizer3<br />(-P7)|160,007<br />(61.04%)|9,373<br />(57.21%)|4,902<br />(29.92%)|12,494<br />(76.26%)|12,297<br />(75.05%)|12,739<br />(77.75%)|13,402<br />(81.80%)|10,068<br />(61.45%)|12,351<br />(75.38%)|6,097<br />(37.21%)|3,974<br />(24.26%)|10,688<br />(65.23%)|10,509<br />(64.14%)|10,415<br />(63.57%)|10,347<br />(63.15%)|10,650<br />(65.00%)|9,701<br />(59.21%)|
|hruST<br />(oh1c -r)|162,217<br />(61.88%)|9,369<br />(57.18%)|4,895<br />(29.88%)|12,563<br />(76.68%)|12,282<br />(74.96%)|12,768<br />(77.93%)|13,454<br />(82.12%)|10,079<br />(61.52%)|12,331<br />(75.26%)|6,434<br />(39.27%)|4,230<br />(25.82%)|10,940<br />(66.77%)|10,753<br />(65.63%)|10,679<br />(65.18%)|10,597<br />(64.68%)|10,906<br />(66.56%)|9,937<br />(60.65%)|
|lz4<br />(smalLZ4)|191,416<br />(73.02%)|10,833<br />(66.12%)|5,794<br />(35.36%)|14,742<br />(89.98%)|14,290<br />(87.22%)|14,837<br />(90.56%)|15,448<br />(94.29%)|11,630<br />(70.98%)|14,578<br />(88.98%)|8,088<br />(49.37%)|5,431<br />(33.15%)|13,003<br />(79.36%)|12,732<br />(77.71%)|12,673<br />(77.35%)|12,535<br />(76.51%)|12,972<br />(79.17%)|11,830<br />(72.20%)|
|lz48|198,227<br />(75.62%)|10,717<br />(65.41%)|5,752<br />(35.11%)|14,588<br />(89.04%)|14,250<br />(86.98%)|14,268<br />(87.08%)|15,305<br />(93.41%)|12,121<br />(73.98%)|14,074<br />(85.90%)|8,167<br />(49.85%)|5,532<br />(33.76%)|14,290<br />(87.22%)|14,024<br />(85.60%)|13,960<br />(85.21%)|13,952<br />(85.16%)|14,179<br />(86.54%)|13,048<br />(79.64%)|
|lz49|195,027<br />(74.40%)|10,628<br />(64.87%)|5,559<br />(33.93%)|14,512<br />(88.57%)|14,030<br />(85.63%)|14,196<br />(86.65%)|15,254<br />(93.10%)|11,980<br />(73.12%)|13,969<br />(85.26%)|7,824<br />(47.75%)|5,240<br />(31.98%)|13,985<br />(85.36%)|13,761<br />(83.99%)|13,717<br />(83.72%)|13,674<br />(83.46%)|13,920<br />(84.96%)|12,778<br />(77.99%)|
|lze|174,182<br />(66.45%)|10,092<br />(61.60%)|5,463<br />(33.34%)|13,472<br />(82.23%)|13,187<br />(80.49%)|13,698<br />(83.61%)|14,389<br />(87.82%)|10,830<br />(66.10%)|13,303<br />(81.20%)|7,027<br />(42.89%)|4,664<br />(28.47%)|11,696<br />(71.39%)|11,493<br />(70.15%)|11,373<br />(69.42%)|11,283<br />(68.87%)|11,634<br />(71.01%)|10,578<br />(64.56%)|
|lzee|174,118<br />(66.42%)|10,088<br />(61.57%)|5,459<br />(33.32%)|13,468<br />(82.20%)|13,183<br />(80.46%)|13,694<br />(83.58%)|14,385<br />(87.80%)|10,826<br />(66.08%)|13,299<br />(81.17%)|7,023<br />(42.86%)|4,660<br />(28.44%)|11,692<br />(71.36%)|11,489<br />(70.12%)|11,369<br />(69.39%)|11,279<br />(68.84%)|11,630<br />(70.98%)|10,574<br />(64.54%)|
|lzsa1<br />(-f1)|182,295<br />(69.54%)|10,338<br />(63.10%)|5,391<br />(32.90%)|14,043<br />(85.71%)|13,703<br />(83.64%)|14,087<br />(85.98%)|14,892<br />(90.89%)|11,047<br />(67.43%)|13,719<br />(83.73%)|7,316<br />(44.65%)|4,804<br />(29.32%)|12,544<br />(76.56%)|12,252<br />(74.78%)|12,189<br />(74.40%)|12,075<br />(73.70%)|12,507<br />(76.34%)|11,388<br />(69.51%)|
|lzsa2<br />(-f2)|167,518<br />(63.90%)|9,671<br />(59.03%)|5,092<br />(31.08%)|13,126<br />(80.11%)|12,804<br />(78.15%)|13,292<br />(81.13%)|14,058<br />(85.80%)|10,340<br />(63.11%)|12,807<br />(78.17%)|6,422<br />(39.20%)|4,250<br />(25.94%)|11,289<br />(68.90%)|11,057<br />(67.49%)|10,937<br />(66.75%)|10,849<br />(66.22%)|11,276<br />(68.82%)|10,248<br />(62.55%)|
|megalz|167,609<br />(63.94%)|9,718<br />(59.31%)|5,124<br />(31.27%)|12,965<br />(79.13%)|12,660<br />(77.27%)|13,072<br />(79.79%)|13,917<br />(84.94%)|10,407<br />(63.52%)|12,833<br />(78.33%)|6,514<br />(39.76%)|4,320<br />(26.37%)|11,362<br />(69.35%)|11,161<br />(68.12%)|11,016<br />(67.24%)|11,012<br />(67.21%)|11,281<br />(68.85%)|10,247<br />(62.54%)|
|pletter|167,494<br />(63.89%)|9,706<br />(59.24%)|5,083<br />(31.02%)|12,945<br />(79.01%)|12,700<br />(77.51%)|13,205<br />(80.60%)|13,909<br />(84.89%)|10,466<br />(63.88%)|12,858<br />(78.48%)|6,511<br />(39.74%)|4,269<br />(26.06%)|11,340<br />(69.21%)|11,105<br />(67.78%)|10,992<br />(67.09%)|10,908<br />(66.58%)|11,252<br />(68.68%)|10,245<br />(62.53%)|
|shrinkler|153,164<br />(58.43%)|8,984<br />(54.83%)|4,680<br />(28.56%)|12,148<br />(74.15%)|11,916<br />(72.73%)|12,276<br />(74.93%)|13,100<br />(79.96%)|9,536<br />(58.20%)|11,820<br />(72.14%)|5,728<br />(34.96%)|3,700<br />(22.58%)|10,212<br />(62.33%)|10,020<br />(61.16%)|9,876<br />(60.28%)|9,808<br />(59.86%)|10,148<br />(61.94%)|9,212<br />(56.23%)|
|zx7|170,296<br />(64.96%)|9,781<br />(59.70%)|5,080<br />(31.01%)|13,104<br />(79.98%)|12,784<br />(78.03%)|13,224<br />(80.71%)|14,021<br />(85.58%)|10,515<br />(64.18%)|12,943<br />(79.00%)|6,532<br />(39.87%)|4,401<br />(26.86%)|11,623<br />(70.94%)|11,436<br />(69.80%)|11,337<br />(69.20%)|11,331<br />(69.16%)|11,612<br />(70.87%)|10,572<br />(64.53%)|
|zx7b|170,425<br />(65.01%)|9,762<br />(59.58%)|5,091<br />(31.07%)|13,103<br />(79.97%)|12,810<br />(78.19%)|13,248<br />(80.86%)|14,002<br />(85.46%)|10,495<br />(64.06%)|12,964<br />(79.13%)|6,591<br />(40.23%)|4,424<br />(27.00%)|11,629<br />(70.98%)|11,451<br />(69.89%)|11,327<br />(69.13%)|11,341<br />(69.22%)|11,601<br />(70.81%)|10,586<br />(64.61%)|
|zx7mini<br />(back)|190,540<br />(72.69%)|10,580<br />(64.58%)|5,702<br />(34.80%)|14,358<br />(87.63%)|14,064<br />(85.84%)|14,015<br />(85.54%)|15,267<br />(93.18%)|12,073<br />(73.69%)|13,874<br />(84.68%)|7,390<br />(45.10%)|4,921<br />(30.04%)|13,428<br />(81.96%)|13,182<br />(80.46%)|13,091<br />(79.90%)|13,039<br />(79.58%)|13,311<br />(81.24%)|12,245<br />(74.74%)|


## Depackers


|packer|unpacker|R800|180|ROM|unpacker<br />size|packed<br />size rate|unpacking<br />time rate|description|
|---|---|:---:|:---:|:---:|---:|---:|---:|---|
|ApLib|aplib156b|o|x|o|            156|61.58%|LDIR x 9.94||
|ApLib|aplib247b|o|x|o|            249|61.58%|LDIR x 5.96||
|ApLib|aplib247b_180_minimal|o|o|o|            152|61.58%|LDIR x 7.48|Support for hd64180, shorter, but slower from aplib247b|
|ApLib|aplib247b_180_small|o|o|o|            171|61.58%|LDIR x 5.80|Support for hd64180, shorter, faster from aplib247b|
|ApLib|aplib247b_180_fast|o|o|o|            234|61.58%|LDIR x 5.51|Support for hd64180, shorter, faster from aplib247b|
|Exomizer2|deexo|o|x|o|            169|61.03%|LDIR x 17.99||
|Exomizer2|deexo_180|o|o|o|            166|61.03%|LDIR x 17.99|Support for hd64180, shorter, faster from deexo|
|Exomizer2|deexo_180_fast_jp|o|o|o|            176|61.03%|LDIR x 15.41|Faster, but longer from deexo_180|
|Exomizer2|deexoopt_f3_180_p0|o|o|o|            242|61.03%|LDIR x 12.29|Support for Exomizer2(-P0) from deexoopt_f3_180|
|Exomizer3|deexo3p7|o|o|o|            176|61.03%|LDIR x 13.60|Support for Exomizer3(-P7) from deexo_180|
|Exomizer3|deexo3p7_fast_jp|o|o|o|            181|61.03%|LDIR x 11.66|Faster, but longer from deexo3p7|
|Exomizer3|deexoopt_p7|o|x|o|            219|61.03%|LDIR x 10.57|Support for Exomizer3(-P7) with bug fixes from deexoopt|
|Exomizer3|deexoopt_f3_p7|o|x|o|            212|61.03%|LDIR x 10.16|Support for all -P options, faster, shorter from deexoopt_p7|
|Exomizer3|deexoopt_f3_180_p7|o|o|o|            219|61.03%|LDIR x 10.57|Support for hd64180, but longer, slower from deexoopt_f3_p7|
|Exomizer3|deexo3|o|o|o|            191|61.03%|LDIR x 11.42|Newly implemented|
|hrust|dehrust_ix|o|o|o|            234|61.88%|LDIR x 7.54||
|hrust|dehrust_ix_232b|o|o|o|            232|61.88%|LDIR x 7.53|Shorter, bit faster from dehrust_ix|
|hrust|dehrust_hl|o|o|o|            226|61.88%|LDIR x 7.41|Shorter, bit faster from dehrust_ix|
|hrust|dehrust_stk|o|o|x data|            209|61.88%|LDIR x 6.84||
|lz4|lz4dec|o|o|x code|             97|73.01%|LDIR x 1.83||
|lz4|unlz4_spke|o|o|o|            103|73.01%|LDIR x 1.68||
|lz4|unlz4_spke_fast|o|o|o|             96|73.01%|LDIR x 1.62|Shorter, bit faster from unlz4_spke|
|lz4|unlz4_spke_small|o|o|o|             65|73.01%|LDIR x 1.67|Shorter, bit faster from unlz4_spke|
|lz48|lz48decrunch\_v006\_|o|x|o|             70|75.61%|LDIR x 1.65||
|lz48|lz48decrunch_v006__180|o|o|o|             71|75.61%|LDIR x 1.57|Support for hd64180, bit faster, but longer from lz48decrunch\_v006\_|
|lz49|lz49decrunch_v001|o|x|o|            106|74.39%|LDIR x 1.88||
|lz49|lz49decrunch_v001_180|o|o|o|            101|74.39%|LDIR x 1.82|Support for hd64180, bit faster, shorter from lz49decrunch_v001|
|lze|lzdec|o|o|o|            119|66.44%|LDIR x 3.62||
|lze|dlze_fast|o|o|o|             90|66.44%|LDIR x 2.83|Newly implemented|
|lze|dlze_small|o|o|o|             82|66.44%|LDIR x 3.60|Newly implemented|
|lzee|dlzee_fast|o|o|o|             84|66.42%|LDIR x 2.73|Newly implemented|
|lzee|dlzee_small|o|o|o|             76|66.42%|LDIR x 3.49|Newly implemented|
|lzsa1|unlzsa1_fast|o|o|o|            109|69.54%|LDIR x 1.68||
|lzsa1|unlzsa1_small|o|o|o|             67|69.54%|LDIR x 1.87||
|lzsa2|unlzsa2_fast|o|x|o|            216|63.90%|LDIR x 2.62||
|lzsa2|unlzsa2_fast_180|o|o|o|            214|63.90%|LDIR x 2.66||
|lzsa2|unlzsa2_small|o|x|o|            139|63.90%|LDIR x 2.98||
|lzsa2|unlzsa2_small_180|o|o|o|            137|63.90%|LDIR x 3.02||
|MegaLZ|megalz_dec40|o|o|o|            110|63.93%|LDIR x 7.57||
|MegaLZ|unmegalz_fast_v2|o|o|o|            233|63.93%|LDIR x 3.44||
|MegaLZ|unmegalz_fast_v2p1|o|o|o|            229|63.93%|LDIR x 3.41|Shorter, bit faster from unmegalz_fast_v2|
|MegaLZ|unmegalz_small_v2|o|o|o|             92|63.93%|LDIR x 5.41||
|Pletter|unpletter|o|x|o|            170|63.89%|LDIR x 4.77||
|Pletter|unpletter_180|o|o|o|            146|63.89%|LDIR x 4.46|Support for hd64180, faster, shorter from unpletter|
|Shrinkler|shrinkler_recall_209|x|x|x code|            209|58.42%|LDIR x 439.20||
|Shrinkler|shrinkler_recall_209_r800_rom|o|o|o|            208|58.42%|LDIR x 437.42|Support for ROM/R800/hd64180, shorter, bit faster from shrinkler_recall_209|
|zx7|dzx7_lom_v1|o|o|o|            214|64.96%|LDIR x 3.88||
|zx7|dzx7_lom_v1p1|o|o|o|            210|64.96%|LDIR x 3.76|Shorter, bit faster from dzx7_lom_v1|
|zx7|dzx7_turbo|o|o|o|             88|64.96%|LDIR x 4.53||
|zx7|dzx7_standard|o|o|o|             69|64.96%|LDIR x 6.08||
|zx7b|dzx7b_fast|x|x|o|            191|65.01%|LDIR x 3.46||
|zx7b|dzx7b_fast_r800|o|o|o|            184|65.01%|LDIR x 3.42|Support for R800/hd64180, shorter, bit faster from dzx7b_fast|
|zx7b|dzx7b_slow|x|x|o|             64|65.01%|LDIR x 5.58||
|zx7b|dzx7b_slow_r800|o|o|o|             64|65.01%|LDIR x 5.58|Support for R800/hd64180 from dzx7b_slow|
|zx7mini|dzx7mini|o|o|o|             39|72.68%|LDIR x 3.40|Newly implemented|




## Decompression speed



test data:ALL(16*16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|        161,438<br />(61.58%)|     59,951,437<br />(LDIR x 9.94)|
|ApLib|aplib247b|            249|        161,438<br />(61.58%)|     35,994,335<br />(LDIR x 5.96)|
|ApLib|aplib247b_180_minimal|            152|        161,438<br />(61.58%)|     45,108,903<br />(LDIR x 7.48)|
|ApLib|aplib247b_180_small|            171|        161,438<br />(61.58%)|     34,998,599<br />(LDIR x 5.80)|
|ApLib|aplib247b_180_fast|            234|        161,438<br />(61.58%)|     33,282,031<br />(LDIR x 5.51)|
|Exomizer2|deexo|            169|        160,011<br />(61.03%)|    108,490,817<br />(LDIR x 17.99)|
|Exomizer2|deexo_180|            166|        160,011<br />(61.03%)|    108,490,229<br />(LDIR x 17.99)|
|Exomizer2|deexo_180_fast_jp|            176|        160,011<br />(61.03%)|     92,969,945<br />(LDIR x 15.41)|
|Exomizer2|deexoopt_f3_180_p0|            242|        160,011<br />(61.03%)|     74,159,660<br />(LDIR x 12.29)|
|Exomizer3|deexo3p7|            176|        160,007<br />(61.03%)|     82,034,254<br />(LDIR x 13.60)|
|Exomizer3|deexo3p7_fast_jp|            181|        160,007<br />(61.03%)|     70,324,722<br />(LDIR x 11.66)|
|Exomizer3|deexoopt_p7|            219|        160,007<br />(61.03%)|     63,745,458<br />(LDIR x 10.57)|
|Exomizer3|deexoopt_f3_p7|            212|        160,007<br />(61.03%)|     61,265,322<br />(LDIR x 10.16)|
|Exomizer3|deexoopt_f3_180_p7|            219|        160,007<br />(61.03%)|     63,774,934<br />(LDIR x 10.57)|
|Exomizer3|deexo3|            191|        160,007<br />(61.03%)|     68,910,122<br />(LDIR x 11.42)|
|hrust|dehrust_ix|            234|        162,217<br />(61.88%)|     45,520,962<br />(LDIR x 7.54)|
|hrust|dehrust_ix_232b|            232|        162,217<br />(61.88%)|     45,413,861<br />(LDIR x 7.53)|
|hrust|dehrust_hl|            226|        162,217<br />(61.88%)|     44,726,210<br />(LDIR x 7.41)|
|hrust|dehrust_stk|            209|        162,217<br />(61.88%)|     41,277,317<br />(LDIR x 6.84)|
|lz4|lz4dec|             97|        191,416<br />(73.01%)|     11,076,311<br />(LDIR x 1.83)|
|lz4|unlz4_spke|            103|        191,416<br />(73.01%)|     10,170,786<br />(LDIR x 1.68)|
|lz4|unlz4_spke_fast|             96|        191,416<br />(73.01%)|      9,778,655<br />(LDIR x 1.62)|
|lz4|unlz4_spke_small|             65|        191,416<br />(73.01%)|     10,119,559<br />(LDIR x 1.67)|
|lz48|lz48decrunch\_v006\_|             70|        198,227<br />(75.61%)|      9,987,125<br />(LDIR x 1.65)|
|lz48|lz48decrunch_v006__180|             71|        198,227<br />(75.61%)|      9,503,964<br />(LDIR x 1.57)|
|lz49|lz49decrunch_v001|            106|        195,027<br />(74.39%)|     11,349,204<br />(LDIR x 1.88)|
|lz49|lz49decrunch_v001_180|            101|        195,027<br />(74.39%)|     11,002,608<br />(LDIR x 1.82)|
|lze|lzdec|            119|        174,182<br />(66.44%)|     21,831,226<br />(LDIR x 3.62)|
|lze|dlze_fast|             90|        174,182<br />(66.44%)|     17,122,936<br />(LDIR x 2.83)|
|lze|dlze_small|             82|        174,182<br />(66.44%)|     21,740,981<br />(LDIR x 3.60)|
|lzee|dlzee_fast|             84|        174,118<br />(66.42%)|     16,483,906<br />(LDIR x 2.73)|
|lzee|dlzee_small|             76|        174,118<br />(66.42%)|     21,101,951<br />(LDIR x 3.49)|
|lzsa1|unlzsa1_fast|            109|        182,295<br />(69.54%)|     10,141,189<br />(LDIR x 1.68)|
|lzsa1|unlzsa1_small|             67|        182,295<br />(69.54%)|     11,309,112<br />(LDIR x 1.87)|
|lzsa2|unlzsa2_fast|            216|        167,518<br />(63.90%)|     15,811,078<br />(LDIR x 2.62)|
|lzsa2|unlzsa2_fast_180|            214|        167,518<br />(63.90%)|     16,079,430<br />(LDIR x 2.66)|
|lzsa2|unlzsa2_small|            139|        167,518<br />(63.90%)|     17,998,064<br />(LDIR x 2.98)|
|lzsa2|unlzsa2_small_180|            137|        167,518<br />(63.90%)|     18,266,416<br />(LDIR x 3.02)|
|MegaLZ|megalz_dec40|            110|        167,609<br />(63.93%)|     45,653,296<br />(LDIR x 7.57)|
|MegaLZ|unmegalz_fast_v2|            233|        167,609<br />(63.93%)|     20,775,177<br />(LDIR x 3.44)|
|MegaLZ|unmegalz_fast_v2p1|            229|        167,609<br />(63.93%)|     20,597,308<br />(LDIR x 3.41)|
|MegaLZ|unmegalz_small_v2|             92|        167,609<br />(63.93%)|     32,642,661<br />(LDIR x 5.41)|
|Pletter|unpletter|            170|        167,494<br />(63.89%)|     28,812,190<br />(LDIR x 4.77)|
|Pletter|unpletter_180|            146|        167,494<br />(63.89%)|     26,943,610<br />(LDIR x 4.46)|
|Shrinkler|shrinkler_recall_209|            209|        153,164<br />(58.42%)|  2,648,153,963<br />(LDIR x 439.20)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|        153,164<br />(58.42%)|  2,637,407,513<br />(LDIR x 437.42)|
|zx7|dzx7_lom_v1|            214|        170,296<br />(64.96%)|     23,446,544<br />(LDIR x 3.88)|
|zx7|dzx7_lom_v1p1|            210|        170,296<br />(64.96%)|     22,729,726<br />(LDIR x 3.76)|
|zx7|dzx7_turbo|             88|        170,296<br />(64.96%)|     27,346,595<br />(LDIR x 4.53)|
|zx7|dzx7_standard|             69|        170,296<br />(64.96%)|     36,700,476<br />(LDIR x 6.08)|
|zx7b|dzx7b_fast|            191|        170,425<br />(65.01%)|     20,907,617<br />(LDIR x 3.46)|
|zx7b|dzx7b_fast_r800|            184|        170,425<br />(65.01%)|     20,659,431<br />(LDIR x 3.42)|
|zx7b|dzx7b_slow|             64|        170,425<br />(65.01%)|     33,688,687<br />(LDIR x 5.58)|
|zx7b|dzx7b_slow_r800|             64|        170,425<br />(65.01%)|     33,688,687<br />(LDIR x 5.58)|
|zx7mini|dzx7mini|             39|        190,540<br />(72.68%)|     20,556,427<br />(LDIR x 3.40)|



test data:MEGASDHC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|          9,367<br />(57.17%)|      3,128,182<br />(LDIR x 8.30)|
|ApLib|aplib247b|            249|          9,367<br />(57.17%)|      1,900,783<br />(LDIR x 5.04)|
|ApLib|aplib247b_180_minimal|            152|          9,367<br />(57.17%)|      2,360,454<br />(LDIR x 6.26)|
|ApLib|aplib247b_180_small|            171|          9,367<br />(57.17%)|      1,837,979<br />(LDIR x 4.87)|
|ApLib|aplib247b_180_fast|            234|          9,367<br />(57.17%)|      1,761,661<br />(LDIR x 4.67)|
|Exomizer2|deexo|            169|          9,373<br />(57.20%)|      5,908,411<br />(LDIR x 15.67)|
|Exomizer2|deexo_180|            166|          9,373<br />(57.20%)|      5,908,329<br />(LDIR x 15.67)|
|Exomizer2|deexo_180_fast_jp|            176|          9,373<br />(57.20%)|      5,079,716<br />(LDIR x 13.47)|
|Exomizer2|deexoopt_f3_180_p0|            242|          9,373<br />(57.20%)|      4,050,659<br />(LDIR x 10.74)|
|Exomizer3|deexo3p7|            176|          9,373<br />(57.20%)|      4,644,675<br />(LDIR x 12.32)|
|Exomizer3|deexo3p7_fast_jp|            181|          9,373<br />(57.20%)|      3,984,529<br />(LDIR x 10.57)|
|Exomizer3|deexoopt_p7|            219|          9,373<br />(57.20%)|      3,567,353<br />(LDIR x 9.46)|
|Exomizer3|deexoopt_f3_p7|            212|          9,373<br />(57.20%)|      3,426,942<br />(LDIR x 9.09)|
|Exomizer3|deexoopt_f3_180_p7|            219|          9,373<br />(57.20%)|      3,568,294<br />(LDIR x 9.46)|
|Exomizer3|deexo3|            191|          9,373<br />(57.20%)|      3,899,713<br />(LDIR x 10.34)|
|hrust|dehrust_ix|            234|          9,369<br />(57.18%)|      2,390,975<br />(LDIR x 6.34)|
|hrust|dehrust_ix_232b|            232|          9,369<br />(57.18%)|      2,385,414<br />(LDIR x 6.33)|
|hrust|dehrust_hl|            226|          9,369<br />(57.18%)|      2,314,558<br />(LDIR x 6.14)|
|hrust|dehrust_stk|            209|          9,369<br />(57.18%)|      2,152,604<br />(LDIR x 5.71)|
|lz4|lz4dec|             97|         10,833<br />(66.11%)|        570,983<br />(LDIR x 1.51)|
|lz4|unlz4_spke|            103|         10,833<br />(66.11%)|        533,603<br />(LDIR x 1.41)|
|lz4|unlz4_spke_fast|             96|         10,833<br />(66.11%)|        519,562<br />(LDIR x 1.37)|
|lz4|unlz4_spke_small|             65|         10,833<br />(66.11%)|        534,514<br />(LDIR x 1.41)|
|lz48|lz48decrunch\_v006\_|             70|         10,717<br />(65.41%)|        557,554<br />(LDIR x 1.47)|
|lz48|lz48decrunch_v006__180|             71|         10,717<br />(65.41%)|        537,244<br />(LDIR x 1.42)|
|lz49|lz49decrunch_v001|            106|         10,628<br />(64.86%)|        608,577<br />(LDIR x 1.61)|
|lz49|lz49decrunch_v001_180|            101|         10,628<br />(64.86%)|        592,629<br />(LDIR x 1.57)|
|lze|lzdec|            119|         10,092<br />(61.59%)|      1,213,495<br />(LDIR x 3.22)|
|lze|dlze_fast|             90|         10,092<br />(61.59%)|        920,646<br />(LDIR x 2.44)|
|lze|dlze_small|             82|         10,092<br />(61.59%)|      1,186,503<br />(LDIR x 3.14)|
|lzee|dlzee_fast|             84|         10,088<br />(61.57%)|        898,746<br />(LDIR x 2.38)|
|lzee|dlzee_small|             76|         10,088<br />(61.57%)|      1,164,603<br />(LDIR x 3.09)|
|lzsa1|unlzsa1_fast|            109|         10,338<br />(63.09%)|        547,588<br />(LDIR x 1.45)|
|lzsa1|unlzsa1_small|             67|         10,338<br />(63.09%)|        595,341<br />(LDIR x 1.57)|
|lzsa2|unlzsa2_fast|            216|          9,671<br />(59.02%)|        851,987<br />(LDIR x 2.26)|
|lzsa2|unlzsa2_fast_180|            214|          9,671<br />(59.02%)|        864,803<br />(LDIR x 2.29)|
|lzsa2|unlzsa2_small|            139|          9,671<br />(59.02%)|        959,510<br />(LDIR x 2.54)|
|lzsa2|unlzsa2_small_180|            137|          9,671<br />(59.02%)|        972,326<br />(LDIR x 2.58)|
|MegaLZ|megalz_dec40|            110|          9,718<br />(59.31%)|      2,363,816<br />(LDIR x 6.27)|
|MegaLZ|unmegalz_fast_v2|            233|          9,718<br />(59.31%)|      1,089,557<br />(LDIR x 2.89)|
|MegaLZ|unmegalz_fast_v2p1|            229|          9,718<br />(59.31%)|      1,080,303<br />(LDIR x 2.86)|
|MegaLZ|unmegalz_small_v2|             92|          9,718<br />(59.31%)|      1,677,063<br />(LDIR x 4.45)|
|Pletter|unpletter|            170|          9,706<br />(59.24%)|      1,459,575<br />(LDIR x 3.87)|
|Pletter|unpletter_180|            146|          9,706<br />(59.24%)|      1,361,099<br />(LDIR x 3.61)|
|Shrinkler|shrinkler_recall_209|            209|          8,984<br />(54.83%)|    147,898,055<br />(LDIR x 392.47)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          8,984<br />(54.83%)|    147,187,122<br />(LDIR x 390.58)|
|zx7|dzx7_lom_v1|            214|          9,781<br />(59.69%)|      1,204,254<br />(LDIR x 3.19)|
|zx7|dzx7_lom_v1p1|            210|          9,781<br />(59.69%)|      1,170,428<br />(LDIR x 3.10)|
|zx7|dzx7_turbo|             88|          9,781<br />(59.69%)|      1,401,087<br />(LDIR x 3.71)|
|zx7|dzx7_standard|             69|          9,781<br />(59.69%)|      1,850,393<br />(LDIR x 4.91)|
|zx7b|dzx7b_fast|            191|          9,762<br />(59.58%)|      1,088,297<br />(LDIR x 2.88)|
|zx7b|dzx7b_fast_r800|            184|          9,762<br />(59.58%)|      1,076,726<br />(LDIR x 2.85)|
|zx7b|dzx7b_slow|             64|          9,762<br />(59.58%)|      1,718,914<br />(LDIR x 4.56)|
|zx7b|dzx7b_slow_r800|             64|          9,762<br />(59.58%)|      1,718,914<br />(LDIR x 4.56)|
|zx7mini|dzx7mini|             39|         10,580<br />(64.57%)|      1,122,710<br />(LDIR x 2.97)|



test data:MEGASDHC.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|          4,928<br />(30.07%)|      1,897,486<br />(LDIR x 5.03)|
|ApLib|aplib247b|            249|          4,928<br />(30.07%)|      1,225,666<br />(LDIR x 3.25)|
|ApLib|aplib247b_180_minimal|            152|          4,928<br />(30.07%)|      1,479,751<br />(LDIR x 3.92)|
|ApLib|aplib247b_180_small|            171|          4,928<br />(30.07%)|      1,193,933<br />(LDIR x 3.16)|
|ApLib|aplib247b_180_fast|            234|          4,928<br />(30.07%)|      1,150,470<br />(LDIR x 3.05)|
|Exomizer2|deexo|            169|          4,902<br />(29.91%)|      3,307,149<br />(LDIR x 8.77)|
|Exomizer2|deexo_180|            166|          4,902<br />(29.91%)|      3,307,019<br />(LDIR x 8.77)|
|Exomizer2|deexo_180_fast_jp|            176|          4,902<br />(29.91%)|      2,874,744<br />(LDIR x 7.62)|
|Exomizer2|deexoopt_f3_180_p0|            242|          4,902<br />(29.91%)|      2,332,339<br />(LDIR x 6.18)|
|Exomizer3|deexo3p7|            176|          4,902<br />(29.91%)|      2,759,609<br />(LDIR x 7.32)|
|Exomizer3|deexo3p7_fast_jp|            181|          4,902<br />(29.91%)|      2,382,976<br />(LDIR x 6.32)|
|Exomizer3|deexoopt_p7|            219|          4,902<br />(29.91%)|      2,155,892<br />(LDIR x 5.72)|
|Exomizer3|deexoopt_f3_p7|            212|          4,902<br />(29.91%)|      2,075,674<br />(LDIR x 5.50)|
|Exomizer3|deexoopt_f3_180_p7|            219|          4,902<br />(29.91%)|      2,152,413<br />(LDIR x 5.71)|
|Exomizer3|deexo3|            191|          4,902<br />(29.91%)|      2,341,157<br />(LDIR x 6.21)|
|hrust|dehrust_ix|            234|          4,895<br />(29.87%)|      1,520,335<br />(LDIR x 4.03)|
|hrust|dehrust_ix_232b|            232|          4,895<br />(29.87%)|      1,517,312<br />(LDIR x 4.02)|
|hrust|dehrust_hl|            226|          4,895<br />(29.87%)|      1,488,956<br />(LDIR x 3.95)|
|hrust|dehrust_stk|            209|          4,895<br />(29.87%)|      1,394,349<br />(LDIR x 3.70)|
|lz4|lz4dec|             97|          5,794<br />(35.36%)|        517,676<br />(LDIR x 1.37)|
|lz4|unlz4_spke|            103|          5,794<br />(35.36%)|        493,260<br />(LDIR x 1.30)|
|lz4|unlz4_spke_fast|             96|          5,794<br />(35.36%)|        482,640<br />(LDIR x 1.28)|
|lz4|unlz4_spke_small|             65|          5,794<br />(35.36%)|        491,273<br />(LDIR x 1.30)|
|lz48|lz48decrunch\_v006\_|             70|          5,752<br />(35.10%)|        504,561<br />(LDIR x 1.33)|
|lz48|lz48decrunch_v006__180|             71|          5,752<br />(35.10%)|        488,345<br />(LDIR x 1.29)|
|lz49|lz49decrunch_v001|            106|          5,559<br />(33.92%)|        540,251<br />(LDIR x 1.43)|
|lz49|lz49decrunch_v001_180|            101|          5,559<br />(33.92%)|        530,307<br />(LDIR x 1.40)|
|lze|lzdec|            119|          5,463<br />(33.34%)|        846,520<br />(LDIR x 2.24)|
|lze|dlze_fast|             90|          5,463<br />(33.34%)|        694,168<br />(LDIR x 1.84)|
|lze|dlze_small|             82|          5,463<br />(33.34%)|        837,755<br />(LDIR x 2.22)|
|lzee|dlzee_fast|             84|          5,459<br />(33.31%)|        679,498<br />(LDIR x 1.80)|
|lzee|dlzee_small|             76|          5,459<br />(33.31%)|        823,085<br />(LDIR x 2.18)|
|lzsa1|unlzsa1_fast|            109|          5,391<br />(32.90%)|        485,613<br />(LDIR x 1.28)|
|lzsa1|unlzsa1_small|             67|          5,391<br />(32.90%)|        516,127<br />(LDIR x 1.36)|
|lzsa2|unlzsa2_fast|            216|          5,092<br />(31.07%)|        633,618<br />(LDIR x 1.68)|
|lzsa2|unlzsa2_fast_180|            214|          5,092<br />(31.07%)|        640,650<br />(LDIR x 1.70)|
|lzsa2|unlzsa2_small|            139|          5,092<br />(31.07%)|        690,869<br />(LDIR x 1.83)|
|lzsa2|unlzsa2_small_180|            137|          5,092<br />(31.07%)|        697,901<br />(LDIR x 1.85)|
|MegaLZ|megalz_dec40|            110|          5,124<br />(31.27%)|      1,578,986<br />(LDIR x 4.19)|
|MegaLZ|unmegalz_fast_v2|            233|          5,124<br />(31.27%)|        838,672<br />(LDIR x 2.22)|
|MegaLZ|unmegalz_fast_v2p1|            229|          5,124<br />(31.27%)|        833,988<br />(LDIR x 2.21)|
|MegaLZ|unmegalz_small_v2|             92|          5,124<br />(31.27%)|      1,194,407<br />(LDIR x 3.16)|
|Pletter|unpletter|            170|          5,083<br />(31.02%)|        905,030<br />(LDIR x 2.40)|
|Pletter|unpletter_180|            146|          5,083<br />(31.02%)|        855,839<br />(LDIR x 2.27)|
|Shrinkler|shrinkler_recall_209|            209|          4,680<br />(28.56%)|     78,117,653<br />(LDIR x 207.29)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          4,680<br />(28.56%)|     77,755,211<br />(LDIR x 206.33)|
|zx7|dzx7_lom_v1|            214|          5,080<br />(31.00%)|        844,236<br />(LDIR x 2.24)|
|zx7|dzx7_lom_v1p1|            210|          5,080<br />(31.00%)|        824,174<br />(LDIR x 2.18)|
|zx7|dzx7_turbo|             88|          5,080<br />(31.00%)|        950,318<br />(LDIR x 2.52)|
|zx7|dzx7_standard|             69|          5,080<br />(31.00%)|      1,192,495<br />(LDIR x 3.16)|
|zx7b|dzx7b_fast|            191|          5,091<br />(31.07%)|        769,861<br />(LDIR x 2.04)|
|zx7b|dzx7b_fast_r800|            184|          5,091<br />(31.07%)|        763,645<br />(LDIR x 2.02)|
|zx7b|dzx7b_slow|             64|          5,091<br />(31.07%)|      1,109,193<br />(LDIR x 2.94)|
|zx7b|dzx7b_slow_r800|             64|          5,091<br />(31.07%)|      1,109,193<br />(LDIR x 2.94)|
|zx7mini|dzx7mini|             39|          5,702<br />(34.80%)|        844,220<br />(LDIR x 2.24)|



test data:MEGASDHC.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         12,595<br />(76.87%)|      4,326,841<br />(LDIR x 11.48)|
|ApLib|aplib247b|            249|         12,595<br />(76.87%)|      2,596,162<br />(LDIR x 6.88)|
|ApLib|aplib247b_180_minimal|            152|         12,595<br />(76.87%)|      3,238,820<br />(LDIR x 8.59)|
|ApLib|aplib247b_180_small|            171|         12,595<br />(76.87%)|      2,505,386<br />(LDIR x 6.64)|
|ApLib|aplib247b_180_fast|            234|         12,595<br />(76.87%)|      2,391,239<br />(LDIR x 6.34)|
|Exomizer2|deexo|            169|         12,494<br />(76.25%)|      7,962,111<br />(LDIR x 21.12)|
|Exomizer2|deexo_180|            166|         12,494<br />(76.25%)|      7,962,005<br />(LDIR x 21.12)|
|Exomizer2|deexo_180_fast_jp|            176|         12,494<br />(76.25%)|      6,808,036<br />(LDIR x 18.06)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,494<br />(76.25%)|      5,419,432<br />(LDIR x 14.38)|
|Exomizer3|deexo3p7|            176|         12,494<br />(76.25%)|      6,005,290<br />(LDIR x 15.93)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,494<br />(76.25%)|      5,123,001<br />(LDIR x 13.59)|
|Exomizer3|deexoopt_p7|            219|         12,494<br />(76.25%)|      4,676,657<br />(LDIR x 12.41)|
|Exomizer3|deexoopt_f3_p7|            212|         12,494<br />(76.25%)|      4,497,278<br />(LDIR x 11.93)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,494<br />(76.25%)|      4,680,084<br />(LDIR x 12.41)|
|Exomizer3|deexo3|            191|         12,494<br />(76.25%)|      5,029,580<br />(LDIR x 13.34)|
|hrust|dehrust_ix|            234|         12,563<br />(76.67%)|      3,175,826<br />(LDIR x 8.42)|
|hrust|dehrust_ix_232b|            232|         12,563<br />(76.67%)|      3,168,348<br />(LDIR x 8.40)|
|hrust|dehrust_hl|            226|         12,563<br />(76.67%)|      3,098,624<br />(LDIR x 8.22)|
|hrust|dehrust_stk|            209|         12,563<br />(76.67%)|      2,861,857<br />(LDIR x 7.59)|
|lz4|lz4dec|             97|         14,742<br />(89.97%)|        631,478<br />(LDIR x 1.67)|
|lz4|unlz4_spke|            103|         14,742<br />(89.97%)|        581,959<br />(LDIR x 1.54)|
|lz4|unlz4_spke_fast|             96|         14,742<br />(89.97%)|        563,602<br />(LDIR x 1.49)|
|lz4|unlz4_spke_small|             65|         14,742<br />(89.97%)|        583,554<br />(LDIR x 1.54)|
|lz48|lz48decrunch\_v006\_|             70|         14,588<br />(89.03%)|        593,341<br />(LDIR x 1.57)|
|lz48|lz48decrunch_v006__180|             71|         14,588<br />(89.03%)|        568,287<br />(LDIR x 1.50)|
|lz49|lz49decrunch_v001|            106|         14,512<br />(88.57%)|        675,825<br />(LDIR x 1.79)|
|lz49|lz49decrunch_v001_180|            101|         14,512<br />(88.57%)|        655,886<br />(LDIR x 1.74)|
|lze|lzdec|            119|         13,472<br />(82.22%)|      1,536,039<br />(LDIR x 4.07)|
|lze|dlze_fast|             90|         13,472<br />(82.22%)|      1,144,673<br />(LDIR x 3.03)|
|lze|dlze_small|             82|         13,472<br />(82.22%)|      1,507,522<br />(LDIR x 4.00)|
|lzee|dlzee_fast|             84|         13,468<br />(82.20%)|      1,111,043<br />(LDIR x 2.94)|
|lzee|dlzee_small|             76|         13,468<br />(82.20%)|      1,473,892<br />(LDIR x 3.91)|
|lzsa1|unlzsa1_fast|            109|         14,043<br />(85.71%)|        613,790<br />(LDIR x 1.62)|
|lzsa1|unlzsa1_small|             67|         14,043<br />(85.71%)|        680,154<br />(LDIR x 1.80)|
|lzsa2|unlzsa2_fast|            216|         13,126<br />(80.11%)|      1,053,700<br />(LDIR x 2.79)|
|lzsa2|unlzsa2_fast_180|            214|         13,126<br />(80.11%)|      1,072,308<br />(LDIR x 2.84)|
|lzsa2|unlzsa2_small|            139|         13,126<br />(80.11%)|      1,203,875<br />(LDIR x 3.19)|
|lzsa2|unlzsa2_small_180|            137|         13,126<br />(80.11%)|      1,222,483<br />(LDIR x 3.24)|
|MegaLZ|megalz_dec40|            110|         12,965<br />(79.13%)|      3,108,603<br />(LDIR x 8.24)|
|MegaLZ|unmegalz_fast_v2|            233|         12,965<br />(79.13%)|      1,352,140<br />(LDIR x 3.58)|
|MegaLZ|unmegalz_fast_v2p1|            229|         12,965<br />(79.13%)|      1,337,856<br />(LDIR x 3.55)|
|MegaLZ|unmegalz_small_v2|             92|         12,965<br />(79.13%)|      2,168,953<br />(LDIR x 5.75)|
|Pletter|unpletter|            170|         12,945<br />(79.01%)|      1,990,443<br />(LDIR x 5.28)|
|Pletter|unpletter_180|            146|         12,945<br />(79.01%)|      1,846,016<br />(LDIR x 4.89)|
|Shrinkler|shrinkler_recall_209|            209|         12,148<br />(74.14%)|    204,353,362<br />(LDIR x 542.28)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         12,148<br />(74.14%)|    203,422,896<br />(LDIR x 539.81)|
|zx7|dzx7_lom_v1|            214|         13,104<br />(79.98%)|      1,607,280<br />(LDIR x 4.26)|
|zx7|dzx7_lom_v1p1|            210|         13,104<br />(79.98%)|      1,557,764<br />(LDIR x 4.13)|
|zx7|dzx7_turbo|             88|         13,104<br />(79.98%)|      1,892,199<br />(LDIR x 5.02)|
|zx7|dzx7_standard|             69|         13,104<br />(79.98%)|      2,571,139<br />(LDIR x 6.82)|
|zx7b|dzx7b_fast|            191|         13,103<br />(79.97%)|      1,438,531<br />(LDIR x 3.81)|
|zx7b|dzx7b_fast_r800|            184|         13,103<br />(79.97%)|      1,420,395<br />(LDIR x 3.76)|
|zx7b|dzx7b_slow|             64|         13,103<br />(79.97%)|      2,374,575<br />(LDIR x 6.30)|
|zx7b|dzx7b_slow_r800|             64|         13,103<br />(79.97%)|      2,374,575<br />(LDIR x 6.30)|
|zx7mini|dzx7mini|             39|         14,358<br />(87.63%)|      1,358,190<br />(LDIR x 3.60)|



test data:MEGASDHC.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         12,340<br />(75.31%)|      4,080,119<br />(LDIR x 10.82)|
|ApLib|aplib247b|            249|         12,340<br />(75.31%)|      2,450,631<br />(LDIR x 6.50)|
|ApLib|aplib247b_180_minimal|            152|         12,340<br />(75.31%)|      3,052,047<br />(LDIR x 8.09)|
|ApLib|aplib247b_180_small|            171|         12,340<br />(75.31%)|      2,360,219<br />(LDIR x 6.26)|
|ApLib|aplib247b_180_fast|            234|         12,340<br />(75.31%)|      2,256,658<br />(LDIR x 5.98)|
|Exomizer2|deexo|            169|         12,297<br />(75.05%)|      7,705,336<br />(LDIR x 20.44)|
|Exomizer2|deexo_180|            166|         12,297<br />(75.05%)|      7,705,250<br />(LDIR x 20.44)|
|Exomizer2|deexo_180_fast_jp|            176|         12,297<br />(75.05%)|      6,613,232<br />(LDIR x 17.54)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,297<br />(75.05%)|      5,232,700<br />(LDIR x 13.88)|
|Exomizer3|deexo3p7|            176|         12,297<br />(75.05%)|      6,143,310<br />(LDIR x 16.30)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,297<br />(75.05%)|      5,242,630<br />(LDIR x 13.91)|
|Exomizer3|deexoopt_p7|            219|         12,297<br />(75.05%)|      4,667,845<br />(LDIR x 12.38)|
|Exomizer3|deexoopt_f3_p7|            212|         12,297<br />(75.05%)|      4,478,345<br />(LDIR x 11.88)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,297<br />(75.05%)|      4,667,380<br />(LDIR x 12.38)|
|Exomizer3|deexo3|            191|         12,297<br />(75.05%)|      5,129,320<br />(LDIR x 13.61)|
|hrust|dehrust_ix|            234|         12,282<br />(74.96%)|      2,984,997<br />(LDIR x 7.92)|
|hrust|dehrust_ix_232b|            232|         12,282<br />(74.96%)|      2,978,009<br />(LDIR x 7.90)|
|hrust|dehrust_hl|            226|         12,282<br />(74.96%)|      2,891,550<br />(LDIR x 7.67)|
|hrust|dehrust_stk|            209|         12,282<br />(74.96%)|      2,678,183<br />(LDIR x 7.10)|
|lz4|lz4dec|             97|         14,290<br />(87.21%)|        599,898<br />(LDIR x 1.59)|
|lz4|unlz4_spke|            103|         14,290<br />(87.21%)|        556,100<br />(LDIR x 1.47)|
|lz4|unlz4_spke_fast|             96|         14,290<br />(87.21%)|        540,184<br />(LDIR x 1.43)|
|lz4|unlz4_spke_small|             65|         14,290<br />(87.21%)|        557,963<br />(LDIR x 1.48)|
|lz48|lz48decrunch\_v006\_|             70|         14,250<br />(86.97%)|        581,226<br />(LDIR x 1.54)|
|lz48|lz48decrunch_v006__180|             71|         14,250<br />(86.97%)|        558,530<br />(LDIR x 1.48)|
|lz49|lz49decrunch_v001|            106|         14,030<br />(85.63%)|        658,644<br />(LDIR x 1.74)|
|lz49|lz49decrunch_v001_180|            101|         14,030<br />(85.63%)|        640,517<br />(LDIR x 1.69)|
|lze|lzdec|            119|         13,187<br />(80.48%)|      1,481,802<br />(LDIR x 3.93)|
|lze|dlze_fast|             90|         13,187<br />(80.48%)|      1,094,635<br />(LDIR x 2.90)|
|lze|dlze_small|             82|         13,187<br />(80.48%)|      1,446,826<br />(LDIR x 3.83)|
|lzee|dlzee_fast|             84|         13,183<br />(80.46%)|      1,065,955<br />(LDIR x 2.82)|
|lzee|dlzee_small|             76|         13,183<br />(80.46%)|      1,418,146<br />(LDIR x 3.76)|
|lzsa1|unlzsa1_fast|            109|         13,703<br />(83.63%)|        589,986<br />(LDIR x 1.56)|
|lzsa1|unlzsa1_small|             67|         13,703<br />(83.63%)|        649,932<br />(LDIR x 1.72)|
|lzsa2|unlzsa2_fast|            216|         12,804<br />(78.14%)|        992,031<br />(LDIR x 2.63)|
|lzsa2|unlzsa2_fast_180|            214|         12,804<br />(78.14%)|      1,008,879<br />(LDIR x 2.67)|
|lzsa2|unlzsa2_small|            139|         12,804<br />(78.14%)|      1,128,633<br />(LDIR x 2.99)|
|lzsa2|unlzsa2_small_180|            137|         12,804<br />(78.14%)|      1,145,481<br />(LDIR x 3.03)|
|MegaLZ|megalz_dec40|            110|         12,660<br />(77.27%)|      2,979,373<br />(LDIR x 7.90)|
|MegaLZ|unmegalz_fast_v2|            233|         12,660<br />(77.27%)|      1,300,533<br />(LDIR x 3.45)|
|MegaLZ|unmegalz_fast_v2p1|            229|         12,660<br />(77.27%)|      1,287,289<br />(LDIR x 3.41)|
|MegaLZ|unmegalz_small_v2|             92|         12,660<br />(77.27%)|      2,077,557<br />(LDIR x 5.51)|
|Pletter|unpletter|            170|         12,700<br />(77.51%)|      1,873,970<br />(LDIR x 4.97)|
|Pletter|unpletter_180|            146|         12,700<br />(77.51%)|      1,737,676<br />(LDIR x 4.61)|
|Shrinkler|shrinkler_recall_209|            209|         11,916<br />(72.72%)|    198,247,021<br />(LDIR x 526.08)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         11,916<br />(72.72%)|    197,311,497<br />(LDIR x 523.59)|
|zx7|dzx7_lom_v1|            214|         12,784<br />(78.02%)|      1,504,449<br />(LDIR x 3.99)|
|zx7|dzx7_lom_v1p1|            210|         12,784<br />(78.02%)|      1,459,713<br />(LDIR x 3.87)|
|zx7|dzx7_turbo|             88|         12,784<br />(78.02%)|      1,771,697<br />(LDIR x 4.70)|
|zx7|dzx7_standard|             69|         12,784<br />(78.02%)|      2,400,076<br />(LDIR x 6.36)|
|zx7b|dzx7b_fast|            191|         12,810<br />(78.18%)|      1,341,173<br />(LDIR x 3.55)|
|zx7b|dzx7b_fast_r800|            184|         12,810<br />(78.18%)|      1,325,227<br />(LDIR x 3.51)|
|zx7b|dzx7b_slow|             64|         12,810<br />(78.18%)|      2,211,732<br />(LDIR x 5.86)|
|zx7b|dzx7b_slow_r800|             64|         12,810<br />(78.18%)|      2,211,732<br />(LDIR x 5.86)|
|zx7mini|dzx7mini|             39|         14,064<br />(85.83%)|      1,320,096<br />(LDIR x 3.50)|



test data:MSX2MAIN.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         12,836<br />(78.34%)|      4,054,821<br />(LDIR x 10.76)|
|ApLib|aplib247b|            249|         12,836<br />(78.34%)|      2,436,529<br />(LDIR x 6.46)|
|ApLib|aplib247b_180_minimal|            152|         12,836<br />(78.34%)|      3,033,147<br />(LDIR x 8.04)|
|ApLib|aplib247b_180_small|            171|         12,836<br />(78.34%)|      2,343,503<br />(LDIR x 6.21)|
|ApLib|aplib247b_180_fast|            234|         12,836<br />(78.34%)|      2,249,606<br />(LDIR x 5.96)|
|Exomizer2|deexo|            169|         12,740<br />(77.75%)|      7,678,676<br />(LDIR x 20.37)|
|Exomizer2|deexo_180|            166|         12,740<br />(77.75%)|      7,678,762<br />(LDIR x 20.37)|
|Exomizer2|deexo_180_fast_jp|            176|         12,740<br />(77.75%)|      6,608,801<br />(LDIR x 17.53)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,740<br />(77.75%)|      5,234,946<br />(LDIR x 13.89)|
|Exomizer3|deexo3p7|            176|         12,739<br />(77.75%)|      6,207,944<br />(LDIR x 16.47)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,739<br />(77.75%)|      5,309,942<br />(LDIR x 14.09)|
|Exomizer3|deexoopt_p7|            219|         12,739<br />(77.75%)|      4,714,326<br />(LDIR x 12.51)|
|Exomizer3|deexoopt_f3_p7|            212|         12,739<br />(77.75%)|      4,517,671<br />(LDIR x 11.98)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,739<br />(77.75%)|      4,712,862<br />(LDIR x 12.50)|
|Exomizer3|deexo3|            191|         12,739<br />(77.75%)|      5,194,721<br />(LDIR x 13.78)|
|hrust|dehrust_ix|            234|         12,768<br />(77.92%)|      3,074,734<br />(LDIR x 8.15)|
|hrust|dehrust_ix_232b|            232|         12,768<br />(77.92%)|      3,067,283<br />(LDIR x 8.13)|
|hrust|dehrust_hl|            226|         12,768<br />(77.92%)|      2,964,099<br />(LDIR x 7.86)|
|hrust|dehrust_stk|            209|         12,768<br />(77.92%)|      2,750,174<br />(LDIR x 7.29)|
|lz4|lz4dec|             97|         14,837<br />(90.55%)|        611,084<br />(LDIR x 1.62)|
|lz4|unlz4_spke|            103|         14,837<br />(90.55%)|        566,200<br />(LDIR x 1.50)|
|lz4|unlz4_spke_fast|             96|         14,837<br />(90.55%)|        549,249<br />(LDIR x 1.45)|
|lz4|unlz4_spke_small|             65|         14,837<br />(90.55%)|        567,045<br />(LDIR x 1.50)|
|lz48|lz48decrunch\_v006\_|             70|         14,268<br />(87.08%)|        613,020<br />(LDIR x 1.62)|
|lz48|lz48decrunch_v006__180|             71|         14,268<br />(87.08%)|        584,681<br />(LDIR x 1.55)|
|lz49|lz49decrunch_v001|            106|         14,196<br />(86.64%)|        680,983<br />(LDIR x 1.80)|
|lz49|lz49decrunch_v001_180|            101|         14,196<br />(86.64%)|        659,598<br />(LDIR x 1.75)|
|lze|lzdec|            119|         13,698<br />(83.60%)|      1,533,796<br />(LDIR x 4.07)|
|lze|dlze_fast|             90|         13,698<br />(83.60%)|      1,112,550<br />(LDIR x 2.95)|
|lze|dlze_small|             82|         13,698<br />(83.60%)|      1,492,714<br />(LDIR x 3.96)|
|lzee|dlzee_fast|             84|         13,694<br />(83.58%)|      1,090,200<br />(LDIR x 2.89)|
|lzee|dlzee_small|             76|         13,694<br />(83.58%)|      1,470,364<br />(LDIR x 3.90)|
|lzsa1|unlzsa1_fast|            109|         14,087<br />(85.98%)|        586,282<br />(LDIR x 1.55)|
|lzsa1|unlzsa1_small|             67|         14,087<br />(85.98%)|        645,250<br />(LDIR x 1.71)|
|lzsa2|unlzsa2_fast|            216|         13,292<br />(81.12%)|        963,723<br />(LDIR x 2.55)|
|lzsa2|unlzsa2_fast_180|            214|         13,292<br />(81.12%)|        979,987<br />(LDIR x 2.60)|
|lzsa2|unlzsa2_small|            139|         13,292<br />(81.12%)|      1,092,470<br />(LDIR x 2.89)|
|lzsa2|unlzsa2_small_180|            137|         13,292<br />(81.12%)|      1,108,734<br />(LDIR x 2.94)|
|MegaLZ|megalz_dec40|            110|         13,072<br />(79.78%)|      3,077,702<br />(LDIR x 8.16)|
|MegaLZ|unmegalz_fast_v2|            233|         13,072<br />(79.78%)|      1,336,616<br />(LDIR x 3.54)|
|MegaLZ|unmegalz_fast_v2p1|            229|         13,072<br />(79.78%)|      1,322,497<br />(LDIR x 3.50)|
|MegaLZ|unmegalz_small_v2|             92|         13,072<br />(79.78%)|      2,132,837<br />(LDIR x 5.65)|
|Pletter|unpletter|            170|         13,205<br />(80.59%)|      1,788,932<br />(LDIR x 4.74)|
|Pletter|unpletter_180|            146|         13,205<br />(80.59%)|      1,653,754<br />(LDIR x 4.38)|
|Shrinkler|shrinkler_recall_209|            209|         12,276<br />(74.92%)|    202,922,527<br />(LDIR x 538.48)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         12,276<br />(74.92%)|    201,970,559<br />(LDIR x 535.96)|
|zx7|dzx7_lom_v1|            214|         13,224<br />(80.71%)|      1,451,456<br />(LDIR x 3.85)|
|zx7|dzx7_lom_v1p1|            210|         13,224<br />(80.71%)|      1,408,132<br />(LDIR x 3.73)|
|zx7|dzx7_turbo|             88|         13,224<br />(80.71%)|      1,714,445<br />(LDIR x 4.54)|
|zx7|dzx7_standard|             69|         13,224<br />(80.71%)|      2,295,448<br />(LDIR x 6.09)|
|zx7b|dzx7b_fast|            191|         13,248<br />(80.85%)|      1,312,892<br />(LDIR x 3.48)|
|zx7b|dzx7b_fast_r800|            184|         13,248<br />(80.85%)|      1,297,046<br />(LDIR x 3.44)|
|zx7b|dzx7b_slow|             64|         13,248<br />(80.85%)|      2,140,196<br />(LDIR x 5.67)|
|zx7b|dzx7b_slow_r800|             64|         13,248<br />(80.85%)|      2,140,196<br />(LDIR x 5.67)|
|zx7mini|dzx7mini|             39|         14,015<br />(85.54%)|      1,363,067<br />(LDIR x 3.61)|



test data:MSX2MAIN.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         13,579<br />(82.87%)|      4,384,059<br />(LDIR x 11.63)|
|ApLib|aplib247b|            249|         13,579<br />(82.87%)|      2,614,413<br />(LDIR x 6.93)|
|ApLib|aplib247b_180_minimal|            152|         13,579<br />(82.87%)|      3,267,235<br />(LDIR x 8.67)|
|ApLib|aplib247b_180_small|            171|         13,579<br />(82.87%)|      2,514,852<br />(LDIR x 6.67)|
|ApLib|aplib247b_180_fast|            234|         13,579<br />(82.87%)|      2,402,478<br />(LDIR x 6.37)|
|Exomizer2|deexo|            169|         13,402<br />(81.79%)|      8,119,431<br />(LDIR x 21.54)|
|Exomizer2|deexo_180|            166|         13,402<br />(81.79%)|      8,119,361<br />(LDIR x 21.54)|
|Exomizer2|deexo_180_fast_jp|            176|         13,402<br />(81.79%)|      6,941,251<br />(LDIR x 18.41)|
|Exomizer2|deexoopt_f3_180_p0|            242|         13,402<br />(81.79%)|      5,530,017<br />(LDIR x 14.67)|
|Exomizer3|deexo3p7|            176|         13,402<br />(81.79%)|      6,031,181<br />(LDIR x 16.00)|
|Exomizer3|deexo3p7_fast_jp|            181|         13,402<br />(81.79%)|      5,156,357<br />(LDIR x 13.68)|
|Exomizer3|deexoopt_p7|            219|         13,402<br />(81.79%)|      4,709,224<br />(LDIR x 12.49)|
|Exomizer3|deexoopt_f3_p7|            212|         13,402<br />(81.79%)|      4,528,588<br />(LDIR x 12.01)|
|Exomizer3|deexoopt_f3_180_p7|            219|         13,402<br />(81.79%)|      4,715,901<br />(LDIR x 12.51)|
|Exomizer3|deexo3|            191|         13,402<br />(81.79%)|      5,062,344<br />(LDIR x 13.43)|
|hrust|dehrust_ix|            234|         13,454<br />(82.11%)|      3,143,717<br />(LDIR x 8.34)|
|hrust|dehrust_ix_232b|            232|         13,454<br />(82.11%)|      3,136,571<br />(LDIR x 8.32)|
|hrust|dehrust_hl|            226|         13,454<br />(82.11%)|      3,037,982<br />(LDIR x 8.06)|
|hrust|dehrust_stk|            209|         13,454<br />(82.11%)|      2,812,027<br />(LDIR x 7.46)|
|lz4|lz4dec|             97|         15,448<br />(94.28%)|        588,675<br />(LDIR x 1.56)|
|lz4|unlz4_spke|            103|         15,448<br />(94.28%)|        546,251<br />(LDIR x 1.44)|
|lz4|unlz4_spke_fast|             96|         15,448<br />(94.28%)|        531,558<br />(LDIR x 1.41)|
|lz4|unlz4_spke_small|             65|         15,448<br />(94.28%)|        548,986<br />(LDIR x 1.45)|
|lz48|lz48decrunch\_v006\_|             70|         15,305<br />(93.41%)|        563,268<br />(LDIR x 1.49)|
|lz48|lz48decrunch_v006__180|             71|         15,305<br />(93.41%)|        543,506<br />(LDIR x 1.44)|
|lz49|lz49decrunch_v001|            106|         15,254<br />(93.10%)|        636,775<br />(LDIR x 1.68)|
|lz49|lz49decrunch_v001_180|            101|         15,254<br />(93.10%)|        619,966<br />(LDIR x 1.64)|
|lze|lzdec|            119|         14,389<br />(87.82%)|      1,560,048<br />(LDIR x 4.13)|
|lze|dlze_fast|             90|         14,389<br />(87.82%)|      1,138,404<br />(LDIR x 3.02)|
|lze|dlze_small|             82|         14,389<br />(87.82%)|      1,517,879<br />(LDIR x 4.02)|
|lzee|dlzee_fast|             84|         14,385<br />(87.79%)|      1,107,474<br />(LDIR x 2.93)|
|lzee|dlzee_small|             76|         14,385<br />(87.79%)|      1,486,949<br />(LDIR x 3.94)|
|lzsa1|unlzsa1_fast|            109|         14,892<br />(90.89%)|        585,721<br />(LDIR x 1.55)|
|lzsa1|unlzsa1_small|             67|         14,892<br />(90.89%)|        643,824<br />(LDIR x 1.70)|
|lzsa2|unlzsa2_fast|            216|         14,058<br />(85.80%)|      1,010,349<br />(LDIR x 2.68)|
|lzsa2|unlzsa2_fast_180|            214|         14,058<br />(85.80%)|      1,027,261<br />(LDIR x 2.72)|
|lzsa2|unlzsa2_small|            139|         14,058<br />(85.80%)|      1,155,088<br />(LDIR x 3.06)|
|lzsa2|unlzsa2_small_180|            137|         14,058<br />(85.80%)|      1,172,000<br />(LDIR x 3.11)|
|MegaLZ|megalz_dec40|            110|         13,917<br />(84.94%)|      3,129,990<br />(LDIR x 8.30)|
|MegaLZ|unmegalz_fast_v2|            233|         13,917<br />(84.94%)|      1,336,318<br />(LDIR x 3.54)|
|MegaLZ|unmegalz_fast_v2p1|            229|         13,917<br />(84.94%)|      1,321,809<br />(LDIR x 3.50)|
|MegaLZ|unmegalz_small_v2|             92|         13,917<br />(84.94%)|      2,161,096<br />(LDIR x 5.73)|
|Pletter|unpletter|            170|         13,909<br />(84.89%)|      1,997,407<br />(LDIR x 5.30)|
|Pletter|unpletter_180|            146|         13,909<br />(84.89%)|      1,848,758<br />(LDIR x 4.90)|
|Shrinkler|shrinkler_recall_209|            209|         13,100<br />(79.95%)|    219,699,688<br />(LDIR x 583.00)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         13,100<br />(79.95%)|    218,671,668<br />(LDIR x 580.28)|
|zx7|dzx7_lom_v1|            214|         14,021<br />(85.57%)|      1,563,876<br />(LDIR x 4.14)|
|zx7|dzx7_lom_v1p1|            210|         14,021<br />(85.57%)|      1,517,739<br />(LDIR x 4.02)|
|zx7|dzx7_turbo|             88|         14,021<br />(85.57%)|      1,849,758<br />(LDIR x 4.90)|
|zx7|dzx7_standard|             69|         14,021<br />(85.57%)|      2,522,726<br />(LDIR x 6.69)|
|zx7b|dzx7b_fast|            191|         14,002<br />(85.46%)|      1,411,404<br />(LDIR x 3.74)|
|zx7b|dzx7b_fast_r800|            184|         14,002<br />(85.46%)|      1,394,138<br />(LDIR x 3.69)|
|zx7b|dzx7b_slow|             64|         14,002<br />(85.46%)|      2,355,118<br />(LDIR x 6.24)|
|zx7b|dzx7b_slow_r800|             64|         14,002<br />(85.46%)|      2,355,118<br />(LDIR x 6.24)|
|zx7mini|dzx7mini|             39|         15,267<br />(93.18%)|      1,346,826<br />(LDIR x 3.57)|



test data:MSXMUSIC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,048<br />(61.32%)|      3,300,996<br />(LDIR x 8.75)|
|ApLib|aplib247b|            249|         10,048<br />(61.32%)|      1,987,340<br />(LDIR x 5.27)|
|ApLib|aplib247b_180_minimal|            152|         10,048<br />(61.32%)|      2,479,203<br />(LDIR x 6.57)|
|ApLib|aplib247b_180_small|            171|         10,048<br />(61.32%)|      1,919,953<br />(LDIR x 5.09)|
|ApLib|aplib247b_180_fast|            234|         10,048<br />(61.32%)|      1,838,748<br />(LDIR x 4.87)|
|Exomizer2|deexo|            169|         10,068<br />(61.45%)|      5,986,114<br />(LDIR x 15.88)|
|Exomizer2|deexo_180|            166|         10,068<br />(61.45%)|      5,986,088<br />(LDIR x 15.88)|
|Exomizer2|deexo_180_fast_jp|            176|         10,068<br />(61.45%)|      5,151,150<br />(LDIR x 13.66)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,068<br />(61.45%)|      4,111,774<br />(LDIR x 10.91)|
|Exomizer3|deexo3p7|            176|         10,068<br />(61.45%)|      4,792,485<br />(LDIR x 12.71)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,068<br />(61.45%)|      4,105,700<br />(LDIR x 10.89)|
|Exomizer3|deexoopt_p7|            219|         10,068<br />(61.45%)|      3,672,667<br />(LDIR x 9.74)|
|Exomizer3|deexoopt_f3_p7|            212|         10,068<br />(61.45%)|      3,524,205<br />(LDIR x 9.35)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,068<br />(61.45%)|      3,670,641<br />(LDIR x 9.74)|
|Exomizer3|deexo3|            191|         10,068<br />(61.45%)|      4,021,478<br />(LDIR x 10.67)|
|hrust|dehrust_ix|            234|         10,079<br />(61.51%)|      2,526,759<br />(LDIR x 6.70)|
|hrust|dehrust_ix_232b|            232|         10,079<br />(61.51%)|      2,521,345<br />(LDIR x 6.69)|
|hrust|dehrust_hl|            226|         10,079<br />(61.51%)|      2,443,105<br />(LDIR x 6.48)|
|hrust|dehrust_stk|            209|         10,079<br />(61.51%)|      2,273,324<br />(LDIR x 6.03)|
|lz4|lz4dec|             97|         11,630<br />(70.98%)|        608,127<br />(LDIR x 1.61)|
|lz4|unlz4_spke|            103|         11,630<br />(70.98%)|        565,459<br />(LDIR x 1.50)|
|lz4|unlz4_spke_fast|             96|         11,630<br />(70.98%)|        548,512<br />(LDIR x 1.45)|
|lz4|unlz4_spke_small|             65|         11,630<br />(70.98%)|        564,733<br />(LDIR x 1.49)|
|lz48|lz48decrunch\_v006\_|             70|         12,121<br />(73.98%)|        593,944<br />(LDIR x 1.57)|
|lz48|lz48decrunch_v006__180|             71|         12,121<br />(73.98%)|        567,709<br />(LDIR x 1.50)|
|lz49|lz49decrunch_v001|            106|         11,980<br />(73.12%)|        648,929<br />(LDIR x 1.72)|
|lz49|lz49decrunch_v001_180|            101|         11,980<br />(73.12%)|        632,313<br />(LDIR x 1.67)|
|lze|lzdec|            119|         10,830<br />(66.10%)|      1,270,114<br />(LDIR x 3.37)|
|lze|dlze_fast|             90|         10,830<br />(66.10%)|        949,985<br />(LDIR x 2.52)|
|lze|dlze_small|             82|         10,830<br />(66.10%)|      1,237,998<br />(LDIR x 3.28)|
|lzee|dlzee_fast|             84|         10,826<br />(66.07%)|        928,895<br />(LDIR x 2.46)|
|lzee|dlzee_small|             76|         10,826<br />(66.07%)|      1,216,908<br />(LDIR x 3.22)|
|lzsa1|unlzsa1_fast|            109|         11,047<br />(67.42%)|        566,134<br />(LDIR x 1.50)|
|lzsa1|unlzsa1_small|             67|         11,047<br />(67.42%)|        618,612<br />(LDIR x 1.64)|
|lzsa2|unlzsa2_fast|            216|         10,340<br />(63.11%)|        858,076<br />(LDIR x 2.27)|
|lzsa2|unlzsa2_fast_180|            214|         10,340<br />(63.11%)|        871,068<br />(LDIR x 2.31)|
|lzsa2|unlzsa2_small|            139|         10,340<br />(63.11%)|        968,153<br />(LDIR x 2.56)|
|lzsa2|unlzsa2_small_180|            137|         10,340<br />(63.11%)|        981,145<br />(LDIR x 2.60)|
|MegaLZ|megalz_dec40|            110|         10,407<br />(63.51%)|      2,560,679<br />(LDIR x 6.79)|
|MegaLZ|unmegalz_fast_v2|            233|         10,407<br />(63.51%)|      1,164,712<br />(LDIR x 3.09)|
|MegaLZ|unmegalz_fast_v2p1|            229|         10,407<br />(63.51%)|      1,155,838<br />(LDIR x 3.06)|
|MegaLZ|unmegalz_small_v2|             92|         10,407<br />(63.51%)|      1,804,490<br />(LDIR x 4.78)|
|Pletter|unpletter|            170|         10,466<br />(63.87%)|      1,474,879<br />(LDIR x 3.91)|
|Pletter|unpletter_180|            146|         10,466<br />(63.87%)|      1,372,670<br />(LDIR x 3.64)|
|Shrinkler|shrinkler_recall_209|            209|          9,536<br />(58.20%)|    157,373,448<br />(LDIR x 417.61)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          9,536<br />(58.20%)|    156,640,080<br />(LDIR x 415.66)|
|zx7|dzx7_lom_v1|            214|         10,515<br />(64.17%)|      1,216,320<br />(LDIR x 3.22)|
|zx7|dzx7_lom_v1p1|            210|         10,515<br />(64.17%)|      1,182,508<br />(LDIR x 3.13)|
|zx7|dzx7_turbo|             88|         10,515<br />(64.17%)|      1,421,903<br />(LDIR x 3.77)|
|zx7|dzx7_standard|             69|         10,515<br />(64.17%)|      1,877,019<br />(LDIR x 4.98)|
|zx7b|dzx7b_fast|            191|         10,495<br />(64.05%)|      1,103,981<br />(LDIR x 2.92)|
|zx7b|dzx7b_fast_r800|            184|         10,495<br />(64.05%)|      1,092,370<br />(LDIR x 2.89)|
|zx7b|dzx7b_slow|             64|         10,495<br />(64.05%)|      1,753,820<br />(LDIR x 4.65)|
|zx7b|dzx7b_slow_r800|             64|         10,495<br />(64.05%)|      1,753,820<br />(LDIR x 4.65)|
|zx7mini|dzx7mini|             39|         12,073<br />(73.68%)|      1,208,995<br />(LDIR x 3.20)|



test data:MSX2EXT.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         12,361<br />(75.44%)|      4,146,058<br />(LDIR x 11.00)|
|ApLib|aplib247b|            249|         12,361<br />(75.44%)|      2,482,638<br />(LDIR x 6.58)|
|ApLib|aplib247b_180_minimal|            152|         12,361<br />(75.44%)|      3,101,982<br />(LDIR x 8.23)|
|ApLib|aplib247b_180_small|            171|         12,361<br />(75.44%)|      2,394,822<br />(LDIR x 6.35)|
|ApLib|aplib247b_180_fast|            234|         12,361<br />(75.44%)|      2,291,135<br />(LDIR x 6.07)|
|Exomizer2|deexo|            169|         12,351<br />(75.38%)|      8,066,566<br />(LDIR x 21.40)|
|Exomizer2|deexo_180|            166|         12,351<br />(75.38%)|      8,066,560<br />(LDIR x 21.40)|
|Exomizer2|deexo_180_fast_jp|            176|         12,351<br />(75.38%)|      6,927,202<br />(LDIR x 18.38)|
|Exomizer2|deexoopt_f3_180_p0|            242|         12,351<br />(75.38%)|      5,487,189<br />(LDIR x 14.56)|
|Exomizer3|deexo3p7|            176|         12,351<br />(75.38%)|      6,374,679<br />(LDIR x 16.91)|
|Exomizer3|deexo3p7_fast_jp|            181|         12,351<br />(75.38%)|      5,452,809<br />(LDIR x 14.46)|
|Exomizer3|deexoopt_p7|            219|         12,351<br />(75.38%)|      4,856,626<br />(LDIR x 12.88)|
|Exomizer3|deexoopt_f3_p7|            212|         12,351<br />(75.38%)|      4,657,693<br />(LDIR x 12.35)|
|Exomizer3|deexoopt_f3_180_p7|            219|         12,351<br />(75.38%)|      4,857,716<br />(LDIR x 12.89)|
|Exomizer3|deexo3|            191|         12,351<br />(75.38%)|      5,333,574<br />(LDIR x 14.15)|
|hrust|dehrust_ix|            234|         12,331<br />(75.26%)|      3,118,348<br />(LDIR x 8.27)|
|hrust|dehrust_ix_232b|            232|         12,331<br />(75.26%)|      3,111,210<br />(LDIR x 8.25)|
|hrust|dehrust_hl|            226|         12,331<br />(75.26%)|      3,035,700<br />(LDIR x 8.05)|
|hrust|dehrust_stk|            209|         12,331<br />(75.26%)|      2,808,254<br />(LDIR x 7.45)|
|lz4|lz4dec|             97|         14,578<br />(88.97%)|        625,070<br />(LDIR x 1.65)|
|lz4|unlz4_spke|            103|         14,578<br />(88.97%)|        577,220<br />(LDIR x 1.53)|
|lz4|unlz4_spke_fast|             96|         14,578<br />(88.97%)|        559,438<br />(LDIR x 1.48)|
|lz4|unlz4_spke_small|             65|         14,578<br />(88.97%)|        578,472<br />(LDIR x 1.53)|
|lz48|lz48decrunch\_v006\_|             70|         14,074<br />(85.90%)|        633,823<br />(LDIR x 1.68)|
|lz48|lz48decrunch_v006__180|             71|         14,074<br />(85.90%)|        602,329<br />(LDIR x 1.59)|
|lz49|lz49decrunch_v001|            106|         13,969<br />(85.26%)|        708,915<br />(LDIR x 1.88)|
|lz49|lz49decrunch_v001_180|            101|         13,969<br />(85.26%)|        685,181<br />(LDIR x 1.81)|
|lze|lzdec|            119|         13,303<br />(81.19%)|      1,505,104<br />(LDIR x 3.99)|
|lze|dlze_fast|             90|         13,303<br />(81.19%)|      1,105,496<br />(LDIR x 2.93)|
|lze|dlze_small|             82|         13,303<br />(81.19%)|      1,469,437<br />(LDIR x 3.89)|
|lzee|dlzee_fast|             84|         13,299<br />(81.17%)|      1,079,726<br />(LDIR x 2.86)|
|lzee|dlzee_small|             76|         13,299<br />(81.17%)|      1,443,667<br />(LDIR x 3.83)|
|lzsa1|unlzsa1_fast|            109|         13,719<br />(83.73%)|        617,160<br />(LDIR x 1.63)|
|lzsa1|unlzsa1_small|             67|         13,719<br />(83.73%)|        684,213<br />(LDIR x 1.81)|
|lzsa2|unlzsa2_fast|            216|         12,807<br />(78.16%)|        998,999<br />(LDIR x 2.65)|
|lzsa2|unlzsa2_fast_180|            214|         12,807<br />(78.16%)|      1,016,247<br />(LDIR x 2.69)|
|lzsa2|unlzsa2_small|            139|         12,807<br />(78.16%)|      1,135,876<br />(LDIR x 3.01)|
|lzsa2|unlzsa2_small_180|            137|         12,807<br />(78.16%)|      1,153,124<br />(LDIR x 3.05)|
|MegaLZ|megalz_dec40|            110|         12,833<br />(78.32%)|      3,030,834<br />(LDIR x 8.04)|
|MegaLZ|unmegalz_fast_v2|            233|         12,833<br />(78.32%)|      1,318,517<br />(LDIR x 3.49)|
|MegaLZ|unmegalz_fast_v2p1|            229|         12,833<br />(78.32%)|      1,305,298<br />(LDIR x 3.46)|
|MegaLZ|unmegalz_small_v2|             92|         12,833<br />(78.32%)|      2,100,776<br />(LDIR x 5.57)|
|Pletter|unpletter|            170|         12,858<br />(78.47%)|      2,027,765<br />(LDIR x 5.38)|
|Pletter|unpletter_180|            146|         12,858<br />(78.47%)|      1,886,670<br />(LDIR x 5.00)|
|Shrinkler|shrinkler_recall_209|            209|         11,820<br />(72.14%)|    196,044,987<br />(LDIR x 520.23)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         11,820<br />(72.14%)|    195,126,790<br />(LDIR x 517.80)|
|zx7|dzx7_lom_v1|            214|         12,943<br />(78.99%)|      1,480,424<br />(LDIR x 3.92)|
|zx7|dzx7_lom_v1p1|            210|         12,943<br />(78.99%)|      1,435,606<br />(LDIR x 3.80)|
|zx7|dzx7_turbo|             88|         12,943<br />(78.99%)|      1,746,118<br />(LDIR x 4.63)|
|zx7|dzx7_standard|             69|         12,943<br />(78.99%)|      2,342,486<br />(LDIR x 6.21)|
|zx7b|dzx7b_fast|            191|         12,964<br />(79.12%)|      1,328,878<br />(LDIR x 3.52)|
|zx7b|dzx7b_fast_r800|            184|         12,964<br />(79.12%)|      1,312,907<br />(LDIR x 3.48)|
|zx7b|dzx7b_slow|             64|         12,964<br />(79.12%)|      2,165,985<br />(LDIR x 5.74)|
|zx7b|dzx7b_slow_r800|             64|         12,964<br />(79.12%)|      2,165,985<br />(LDIR x 5.74)|
|zx7mini|dzx7mini|             39|         13,874<br />(84.68%)|      1,343,213<br />(LDIR x 3.56)|



test data:KANJJ1.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|          6,223<br />(37.98%)|      2,948,079<br />(LDIR x 7.82)|
|ApLib|aplib247b|            249|          6,223<br />(37.98%)|      1,800,346<br />(LDIR x 4.77)|
|ApLib|aplib247b_180_minimal|            152|          6,223<br />(37.98%)|      2,260,059<br />(LDIR x 5.99)|
|ApLib|aplib247b_180_small|            171|          6,223<br />(37.98%)|      1,783,265<br />(LDIR x 4.73)|
|ApLib|aplib247b_180_fast|            234|          6,223<br />(37.98%)|      1,682,457<br />(LDIR x 4.46)|
|Exomizer2|deexo|            169|          6,097<br />(37.21%)|      5,111,648<br />(LDIR x 13.56)|
|Exomizer2|deexo_180|            166|          6,097<br />(37.21%)|      5,111,742<br />(LDIR x 13.56)|
|Exomizer2|deexo_180_fast_jp|            176|          6,097<br />(37.21%)|      4,404,488<br />(LDIR x 11.68)|
|Exomizer2|deexoopt_f3_180_p0|            242|          6,097<br />(37.21%)|      3,560,615<br />(LDIR x 9.44)|
|Exomizer3|deexo3p7|            176|          6,097<br />(37.21%)|      3,967,129<br />(LDIR x 10.52)|
|Exomizer3|deexo3p7_fast_jp|            181|          6,097<br />(37.21%)|      3,411,495<br />(LDIR x 9.05)|
|Exomizer3|deexoopt_p7|            219|          6,097<br />(37.21%)|      3,141,994<br />(LDIR x 8.33)|
|Exomizer3|deexoopt_f3_p7|            212|          6,097<br />(37.21%)|      3,021,020<br />(LDIR x 8.01)|
|Exomizer3|deexoopt_f3_180_p7|            219|          6,097<br />(37.21%)|      3,138,223<br />(LDIR x 8.32)|
|Exomizer3|deexo3|            191|          6,097<br />(37.21%)|      3,355,773<br />(LDIR x 8.90)|
|hrust|dehrust_ix|            234|          6,434<br />(39.27%)|      2,481,382<br />(LDIR x 6.58)|
|hrust|dehrust_ix_232b|            232|          6,434<br />(39.27%)|      2,475,380<br />(LDIR x 6.56)|
|hrust|dehrust_hl|            226|          6,434<br />(39.27%)|      2,488,589<br />(LDIR x 6.60)|
|hrust|dehrust_stk|            209|          6,434<br />(39.27%)|      2,291,475<br />(LDIR x 6.08)|
|lz4|lz4dec|             97|          8,088<br />(49.36%)|        800,354<br />(LDIR x 2.12)|
|lz4|unlz4_spke|            103|          8,088<br />(49.36%)|        728,699<br />(LDIR x 1.93)|
|lz4|unlz4_spke_fast|             96|          8,088<br />(49.36%)|        692,748<br />(LDIR x 1.83)|
|lz4|unlz4_spke_small|             65|          8,088<br />(49.36%)|        718,914<br />(LDIR x 1.90)|
|lz48|lz48decrunch\_v006\_|             70|          8,167<br />(49.84%)|        735,565<br />(LDIR x 1.95)|
|lz48|lz48decrunch_v006__180|             71|          8,167<br />(49.84%)|        687,419<br />(LDIR x 1.82)|
|lz49|lz49decrunch_v001|            106|          7,824<br />(47.75%)|        820,492<br />(LDIR x 2.17)|
|lz49|lz49decrunch_v001_180|            101|          7,824<br />(47.75%)|        789,822<br />(LDIR x 2.09)|
|lze|lzdec|            119|          7,027<br />(42.88%)|      1,145,514<br />(LDIR x 3.03)|
|lze|dlze_fast|             90|          7,027<br />(42.88%)|        988,066<br />(LDIR x 2.62)|
|lze|dlze_small|             82|          7,027<br />(42.88%)|      1,179,288<br />(LDIR x 3.12)|
|lzee|dlzee_fast|             84|          7,023<br />(42.86%)|        941,626<br />(LDIR x 2.49)|
|lzee|dlzee_small|             76|          7,023<br />(42.86%)|      1,132,848<br />(LDIR x 3.00)|
|lzsa1|unlzsa1_fast|            109|          7,316<br />(44.65%)|        667,130<br />(LDIR x 1.77)|
|lzsa1|unlzsa1_small|             67|          7,316<br />(44.65%)|        752,116<br />(LDIR x 1.99)|
|lzsa2|unlzsa2_fast|            216|          6,422<br />(39.19%)|        951,372<br />(LDIR x 2.52)|
|lzsa2|unlzsa2_fast_180|            214|          6,422<br />(39.19%)|        967,596<br />(LDIR x 2.56)|
|lzsa2|unlzsa2_small|            139|          6,422<br />(39.19%)|      1,076,219<br />(LDIR x 2.85)|
|lzsa2|unlzsa2_small_180|            137|          6,422<br />(39.19%)|      1,092,443<br />(LDIR x 2.89)|
|MegaLZ|megalz_dec40|            110|          6,514<br />(39.75%)|      2,432,743<br />(LDIR x 6.45)|
|MegaLZ|unmegalz_fast_v2|            233|          6,514<br />(39.75%)|      1,220,803<br />(LDIR x 3.23)|
|MegaLZ|unmegalz_fast_v2p1|            229|          6,514<br />(39.75%)|      1,214,359<br />(LDIR x 3.22)|
|MegaLZ|unmegalz_small_v2|             92|          6,514<br />(39.75%)|      1,823,065<br />(LDIR x 4.83)|
|Pletter|unpletter|            170|          6,511<br />(39.73%)|      1,461,388<br />(LDIR x 3.87)|
|Pletter|unpletter_180|            146|          6,511<br />(39.73%)|      1,381,448<br />(LDIR x 3.66)|
|Shrinkler|shrinkler_recall_209|            209|          5,728<br />(34.96%)|    102,142,021<br />(LDIR x 271.05)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          5,728<br />(34.96%)|    101,798,469<br />(LDIR x 270.13)|
|zx7|dzx7_lom_v1|            214|          6,532<br />(39.86%)|      1,340,012<br />(LDIR x 3.55)|
|zx7|dzx7_lom_v1p1|            210|          6,532<br />(39.86%)|      1,295,502<br />(LDIR x 3.43)|
|zx7|dzx7_turbo|             88|          6,532<br />(39.86%)|      1,525,498<br />(LDIR x 4.04)|
|zx7|dzx7_standard|             69|          6,532<br />(39.86%)|      1,983,679<br />(LDIR x 5.26)|
|zx7b|dzx7b_fast|            191|          6,591<br />(40.22%)|      1,161,342<br />(LDIR x 3.08)|
|zx7b|dzx7b_fast_r800|            184|          6,591<br />(40.22%)|      1,148,786<br />(LDIR x 3.04)|
|zx7b|dzx7b_slow|             64|          6,591<br />(40.22%)|      1,765,077<br />(LDIR x 4.68)|
|zx7b|dzx7b_slow_r800|             64|          6,591<br />(40.22%)|      1,765,077<br />(LDIR x 4.68)|
|zx7mini|dzx7mini|             39|          7,390<br />(45.10%)|      1,204,966<br />(LDIR x 3.19)|



test data:KANJJ1.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|          4,092<br />(24.97%)|      2,125,944<br />(LDIR x 5.64)|
|ApLib|aplib247b|            249|          4,092<br />(24.97%)|      1,346,372<br />(LDIR x 3.57)|
|ApLib|aplib247b_180_minimal|            152|          4,092<br />(24.97%)|      1,660,683<br />(LDIR x 4.40)|
|ApLib|aplib247b_180_small|            171|          4,092<br />(24.97%)|      1,337,045<br />(LDIR x 3.54)|
|ApLib|aplib247b_180_fast|            234|          4,092<br />(24.97%)|      1,267,103<br />(LDIR x 3.36)|
|Exomizer2|deexo|            169|          3,975<br />(24.26%)|      3,493,148<br />(LDIR x 9.26)|
|Exomizer2|deexo_180|            166|          3,975<br />(24.26%)|      3,493,202<br />(LDIR x 9.26)|
|Exomizer2|deexo_180_fast_jp|            176|          3,975<br />(24.26%)|      3,025,459<br />(LDIR x 8.02)|
|Exomizer2|deexoopt_f3_180_p0|            242|          3,975<br />(24.26%)|      2,456,792<br />(LDIR x 6.51)|
|Exomizer3|deexo3p7|            176|          3,974<br />(24.25%)|      2,708,049<br />(LDIR x 7.18)|
|Exomizer3|deexo3p7_fast_jp|            181|          3,974<br />(24.25%)|      2,345,386<br />(LDIR x 6.22)|
|Exomizer3|deexoopt_p7|            219|          3,974<br />(24.25%)|      2,176,336<br />(LDIR x 5.77)|
|Exomizer3|deexoopt_f3_p7|            212|          3,974<br />(24.25%)|      2,096,142<br />(LDIR x 5.56)|
|Exomizer3|deexoopt_f3_180_p7|            219|          3,974<br />(24.25%)|      2,170,705<br />(LDIR x 5.76)|
|Exomizer3|deexo3|            191|          3,974<br />(24.25%)|      2,308,370<br />(LDIR x 6.12)|
|hrust|dehrust_ix|            234|          4,230<br />(25.81%)|      1,820,188<br />(LDIR x 4.83)|
|hrust|dehrust_ix_232b|            232|          4,230<br />(25.81%)|      1,816,041<br />(LDIR x 4.81)|
|hrust|dehrust_hl|            226|          4,230<br />(25.81%)|      1,828,751<br />(LDIR x 4.85)|
|hrust|dehrust_stk|            209|          4,230<br />(25.81%)|      1,692,991<br />(LDIR x 4.49)|
|lz4|lz4dec|             97|          5,431<br />(33.14%)|        686,985<br />(LDIR x 1.82)|
|lz4|unlz4_spke|            103|          5,431<br />(33.14%)|        635,269<br />(LDIR x 1.68)|
|lz4|unlz4_spke_fast|             96|          5,431<br />(33.14%)|        609,051<br />(LDIR x 1.61)|
|lz4|unlz4_spke_small|             65|          5,431<br />(33.14%)|        627,506<br />(LDIR x 1.66)|
|lz48|lz48decrunch\_v006\_|             70|          5,532<br />(33.76%)|        654,070<br />(LDIR x 1.73)|
|lz48|lz48decrunch_v006__180|             71|          5,532<br />(33.76%)|        616,778<br />(LDIR x 1.63)|
|lz49|lz49decrunch_v001|            106|          5,240<br />(31.98%)|        714,209<br />(LDIR x 1.89)|
|lz49|lz49decrunch_v001_180|            101|          5,240<br />(31.98%)|        690,471<br />(LDIR x 1.83)|
|lze|lzdec|            119|          4,664<br />(28.46%)|        907,166<br />(LDIR x 2.40)|
|lze|dlze_fast|             90|          4,664<br />(28.46%)|        805,837<br />(LDIR x 2.13)|
|lze|dlze_small|             82|          4,664<br />(28.46%)|        934,476<br />(LDIR x 2.47)|
|lzee|dlzee_fast|             84|          4,660<br />(28.44%)|        772,507<br />(LDIR x 2.04)|
|lzee|dlzee_small|             76|          4,660<br />(28.44%)|        901,146<br />(LDIR x 2.39)|
|lzsa1|unlzsa1_fast|            109|          4,804<br />(29.32%)|        588,549<br />(LDIR x 1.56)|
|lzsa1|unlzsa1_small|             67|          4,804<br />(29.32%)|        650,418<br />(LDIR x 1.72)|
|lzsa2|unlzsa2_fast|            216|          4,250<br />(25.93%)|        776,700<br />(LDIR x 2.06)|
|lzsa2|unlzsa2_fast_180|            214|          4,250<br />(25.93%)|        787,996<br />(LDIR x 2.09)|
|lzsa2|unlzsa2_small|            139|          4,250<br />(25.93%)|        863,310<br />(LDIR x 2.29)|
|lzsa2|unlzsa2_small_180|            137|          4,250<br />(25.93%)|        874,606<br />(LDIR x 2.32)|
|MegaLZ|megalz_dec40|            110|          4,320<br />(26.36%)|      1,795,413<br />(LDIR x 4.76)|
|MegaLZ|unmegalz_fast_v2|            233|          4,320<br />(26.36%)|        969,230<br />(LDIR x 2.57)|
|MegaLZ|unmegalz_fast_v2p1|            229|          4,320<br />(26.36%)|        965,401<br />(LDIR x 2.56)|
|MegaLZ|unmegalz_small_v2|             92|          4,320<br />(26.36%)|      1,383,479<br />(LDIR x 3.67)|
|Pletter|unpletter|            170|          4,269<br />(26.05%)|      1,106,926<br />(LDIR x 2.93)|
|Pletter|unpletter_180|            146|          4,269<br />(26.05%)|      1,055,166<br />(LDIR x 2.80)|
|Shrinkler|shrinkler_recall_209|            209|          3,700<br />(22.58%)|     65,685,212<br />(LDIR x 174.30)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          3,700<br />(22.58%)|     65,451,599<br />(LDIR x 173.68)|
|zx7|dzx7_lom_v1|            214|          4,401<br />(26.86%)|      1,054,761<br />(LDIR x 2.79)|
|zx7|dzx7_lom_v1p1|            210|          4,401<br />(26.86%)|      1,022,912<br />(LDIR x 2.71)|
|zx7|dzx7_turbo|             88|          4,401<br />(26.86%)|      1,182,380<br />(LDIR x 3.13)|
|zx7|dzx7_standard|             69|          4,401<br />(26.86%)|      1,499,336<br />(LDIR x 3.97)|
|zx7b|dzx7b_fast|            191|          4,424<br />(27.00%)|        930,945<br />(LDIR x 2.47)|
|zx7b|dzx7b_fast_r800|            184|          4,424<br />(27.00%)|        922,119<br />(LDIR x 2.44)|
|zx7b|dzx7b_slow|             64|          4,424<br />(27.00%)|      1,349,287<br />(LDIR x 3.58)|
|zx7b|dzx7b_slow_r800|             64|          4,424<br />(27.00%)|      1,349,287<br />(LDIR x 3.58)|
|zx7mini|dzx7mini|             39|          4,921<br />(30.03%)|        977,146<br />(LDIR x 2.59)|



test data:KANJJ1.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,835<br />(66.13%)|      4,339,434<br />(LDIR x 11.51)|
|ApLib|aplib247b|            249|         10,835<br />(66.13%)|      2,572,508<br />(LDIR x 6.82)|
|ApLib|aplib247b_180_minimal|            152|         10,835<br />(66.13%)|      3,252,893<br />(LDIR x 8.63)|
|ApLib|aplib247b_180_small|            171|         10,835<br />(66.13%)|      2,510,373<br />(LDIR x 6.66)|
|ApLib|aplib247b_180_fast|            234|         10,835<br />(66.13%)|      2,373,738<br />(LDIR x 6.29)|
|Exomizer2|deexo|            169|         10,688<br />(65.23%)|      7,768,783<br />(LDIR x 20.61)|
|Exomizer2|deexo_180|            166|         10,688<br />(65.23%)|      7,768,753<br />(LDIR x 20.61)|
|Exomizer2|deexo_180_fast_jp|            176|         10,688<br />(65.23%)|      6,631,200<br />(LDIR x 17.59)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,688<br />(65.23%)|      5,287,280<br />(LDIR x 14.03)|
|Exomizer3|deexo3p7|            176|         10,688<br />(65.23%)|      5,531,415<br />(LDIR x 14.67)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,688<br />(65.23%)|      4,754,980<br />(LDIR x 12.61)|
|Exomizer3|deexoopt_p7|            219|         10,688<br />(65.23%)|      4,341,061<br />(LDIR x 11.51)|
|Exomizer3|deexoopt_f3_p7|            212|         10,688<br />(65.23%)|      4,174,824<br />(LDIR x 11.07)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,688<br />(65.23%)|      4,347,582<br />(LDIR x 11.53)|
|Exomizer3|deexo3|            191|         10,688<br />(65.23%)|      4,653,438<br />(LDIR x 12.34)|
|hrust|dehrust_ix|            234|         10,940<br />(66.77%)|      3,282,337<br />(LDIR x 8.71)|
|hrust|dehrust_ix_232b|            232|         10,940<br />(66.77%)|      3,274,348<br />(LDIR x 8.68)|
|hrust|dehrust_hl|            226|         10,940<br />(66.77%)|      3,256,606<br />(LDIR x 8.64)|
|hrust|dehrust_stk|            209|         10,940<br />(66.77%)|      2,988,194<br />(LDIR x 7.92)|
|lz4|lz4dec|             97|         13,003<br />(79.36%)|        807,802<br />(LDIR x 2.14)|
|lz4|unlz4_spke|            103|         13,003<br />(79.36%)|        732,315<br />(LDIR x 1.94)|
|lz4|unlz4_spke_fast|             96|         13,003<br />(79.36%)|        698,384<br />(LDIR x 1.85)|
|lz4|unlz4_spke_small|             65|         13,003<br />(79.36%)|        726,044<br />(LDIR x 1.92)|
|lz48|lz48decrunch\_v006\_|             70|         14,290<br />(87.21%)|        656,629<br />(LDIR x 1.74)|
|lz48|lz48decrunch_v006__180|             71|         14,290<br />(87.21%)|        622,804<br />(LDIR x 1.65)|
|lz49|lz49decrunch_v001|            106|         13,985<br />(85.35%)|        783,598<br />(LDIR x 2.07)|
|lz49|lz49decrunch_v001_180|            101|         13,985<br />(85.35%)|        758,900<br />(LDIR x 2.01)|
|lze|lzdec|            119|         11,696<br />(71.38%)|      1,503,720<br />(LDIR x 3.99)|
|lze|dlze_fast|             90|         11,696<br />(71.38%)|      1,214,960<br />(LDIR x 3.22)|
|lze|dlze_small|             82|         11,696<br />(71.38%)|      1,519,240<br />(LDIR x 4.03)|
|lzee|dlzee_fast|             84|         11,692<br />(71.36%)|      1,154,330<br />(LDIR x 3.06)|
|lzee|dlzee_small|             76|         11,692<br />(71.36%)|      1,458,610<br />(LDIR x 3.87)|
|lzsa1|unlzsa1_fast|            109|         12,544<br />(76.56%)|        713,593<br />(LDIR x 1.89)|
|lzsa1|unlzsa1_small|             67|         12,544<br />(76.56%)|        809,337<br />(LDIR x 2.14)|
|lzsa2|unlzsa2_fast|            216|         11,289<br />(68.90%)|      1,143,761<br />(LDIR x 3.03)|
|lzsa2|unlzsa2_fast_180|            214|         11,289<br />(68.90%)|      1,164,681<br />(LDIR x 3.09)|
|lzsa2|unlzsa2_small|            139|         11,289<br />(68.90%)|      1,317,156<br />(LDIR x 3.49)|
|lzsa2|unlzsa2_small_180|            137|         11,289<br />(68.90%)|      1,338,076<br />(LDIR x 3.55)|
|MegaLZ|megalz_dec40|            110|         11,362<br />(69.34%)|      3,337,759<br />(LDIR x 8.85)|
|MegaLZ|unmegalz_fast_v2|            233|         11,362<br />(69.34%)|      1,498,314<br />(LDIR x 3.97)|
|MegaLZ|unmegalz_fast_v2p1|            229|         11,362<br />(69.34%)|      1,485,225<br />(LDIR x 3.94)|
|MegaLZ|unmegalz_small_v2|             92|         11,362<br />(69.34%)|      2,398,346<br />(LDIR x 6.36)|
|Pletter|unpletter|            170|         11,340<br />(69.21%)|      2,176,730<br />(LDIR x 5.77)|
|Pletter|unpletter_180|            146|         11,340<br />(69.21%)|      2,041,458<br />(LDIR x 5.41)|
|Shrinkler|shrinkler_recall_209|            209|         10,212<br />(62.32%)|    184,251,287<br />(LDIR x 488.94)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         10,212<br />(62.32%)|    183,623,715<br />(LDIR x 487.27)|
|zx7|dzx7_lom_v1|            214|         11,623<br />(70.94%)|      1,725,942<br />(LDIR x 4.58)|
|zx7|dzx7_lom_v1p1|            210|         11,623<br />(70.94%)|      1,670,826<br />(LDIR x 4.43)|
|zx7|dzx7_turbo|             88|         11,623<br />(70.94%)|      2,018,166<br />(LDIR x 5.35)|
|zx7|dzx7_standard|             69|         11,623<br />(70.94%)|      2,747,252<br />(LDIR x 7.29)|
|zx7b|dzx7b_fast|            191|         11,629<br />(70.97%)|      1,530,270<br />(LDIR x 4.06)|
|zx7b|dzx7b_fast_r800|            184|         11,629<br />(70.97%)|      1,510,669<br />(LDIR x 4.00)|
|zx7b|dzx7b_slow|             64|         11,629<br />(70.97%)|      2,506,048<br />(LDIR x 6.65)|
|zx7b|dzx7b_slow_r800|             64|         11,629<br />(70.97%)|      2,506,048<br />(LDIR x 6.65)|
|zx7mini|dzx7mini|             39|         13,428<br />(81.95%)|      1,421,649<br />(LDIR x 3.77)|



test data:KANJJ1.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,643<br />(64.95%)|      4,332,516<br />(LDIR x 11.49)|
|ApLib|aplib247b|            249|         10,643<br />(64.95%)|      2,565,213<br />(LDIR x 6.80)|
|ApLib|aplib247b_180_minimal|            152|         10,643<br />(64.95%)|      3,249,206<br />(LDIR x 8.62)|
|ApLib|aplib247b_180_small|            171|         10,643<br />(64.95%)|      2,505,701<br />(LDIR x 6.64)|
|ApLib|aplib247b_180_fast|            234|         10,643<br />(64.95%)|      2,368,308<br />(LDIR x 6.28)|
|Exomizer2|deexo|            169|         10,510<br />(64.14%)|      7,603,571<br />(LDIR x 20.17)|
|Exomizer2|deexo_180|            166|         10,510<br />(64.14%)|      7,603,537<br />(LDIR x 20.17)|
|Exomizer2|deexo_180_fast_jp|            176|         10,510<br />(64.14%)|      6,486,424<br />(LDIR x 17.21)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,510<br />(64.14%)|      5,177,222<br />(LDIR x 13.73)|
|Exomizer3|deexo3p7|            176|         10,509<br />(64.14%)|      5,446,711<br />(LDIR x 14.45)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,509<br />(64.14%)|      4,671,690<br />(LDIR x 12.39)|
|Exomizer3|deexoopt_p7|            219|         10,509<br />(64.14%)|      4,275,571<br />(LDIR x 11.34)|
|Exomizer3|deexoopt_f3_p7|            212|         10,509<br />(64.14%)|      4,114,737<br />(LDIR x 10.91)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,509<br />(64.14%)|      4,282,206<br />(LDIR x 11.36)|
|Exomizer3|deexo3|            191|         10,509<br />(64.14%)|      4,577,718<br />(LDIR x 12.14)|
|hrust|dehrust_ix|            234|         10,753<br />(65.63%)|      3,241,681<br />(LDIR x 8.60)|
|hrust|dehrust_ix_232b|            232|         10,753<br />(65.63%)|      3,233,819<br />(LDIR x 8.58)|
|hrust|dehrust_hl|            226|         10,753<br />(65.63%)|      3,215,371<br />(LDIR x 8.53)|
|hrust|dehrust_stk|            209|         10,753<br />(65.63%)|      2,951,087<br />(LDIR x 7.83)|
|lz4|lz4dec|             97|         12,732<br />(77.70%)|        806,560<br />(LDIR x 2.14)|
|lz4|unlz4_spke|            103|         12,732<br />(77.70%)|        731,403<br />(LDIR x 1.94)|
|lz4|unlz4_spke_fast|             96|         12,732<br />(77.70%)|        697,024<br />(LDIR x 1.84)|
|lz4|unlz4_spke_small|             65|         12,732<br />(77.70%)|        724,736<br />(LDIR x 1.92)|
|lz48|lz48decrunch\_v006\_|             70|         14,024<br />(85.59%)|        668,286<br />(LDIR x 1.77)|
|lz48|lz48decrunch_v006__180|             71|         14,024<br />(85.59%)|        632,410<br />(LDIR x 1.67)|
|lz49|lz49decrunch_v001|            106|         13,761<br />(83.99%)|        786,435<br />(LDIR x 2.08)|
|lz49|lz49decrunch_v001_180|            101|         13,761<br />(83.99%)|        761,096<br />(LDIR x 2.01)|
|lze|lzdec|            119|         11,493<br />(70.14%)|      1,480,718<br />(LDIR x 3.92)|
|lze|dlze_fast|             90|         11,493<br />(70.14%)|      1,200,648<br />(LDIR x 3.18)|
|lze|dlze_small|             82|         11,493<br />(70.14%)|      1,496,520<br />(LDIR x 3.97)|
|lzee|dlzee_fast|             84|         11,489<br />(70.12%)|      1,139,988<br />(LDIR x 3.02)|
|lzee|dlzee_small|             76|         11,489<br />(70.12%)|      1,435,860<br />(LDIR x 3.81)|
|lzsa1|unlzsa1_fast|            109|         12,252<br />(74.78%)|        718,488<br />(LDIR x 1.90)|
|lzsa1|unlzsa1_small|             67|         12,252<br />(74.78%)|        816,475<br />(LDIR x 2.16)|
|lzsa2|unlzsa2_fast|            216|         11,057<br />(67.48%)|      1,116,132<br />(LDIR x 2.96)|
|lzsa2|unlzsa2_fast_180|            214|         11,057<br />(67.48%)|      1,136,452<br />(LDIR x 3.01)|
|lzsa2|unlzsa2_small|            139|         11,057<br />(67.48%)|      1,281,266<br />(LDIR x 3.40)|
|lzsa2|unlzsa2_small_180|            137|         11,057<br />(67.48%)|      1,301,586<br />(LDIR x 3.45)|
|MegaLZ|megalz_dec40|            110|         11,161<br />(68.12%)|      3,294,363<br />(LDIR x 8.74)|
|MegaLZ|unmegalz_fast_v2|            233|         11,161<br />(68.12%)|      1,485,045<br />(LDIR x 3.94)|
|MegaLZ|unmegalz_fast_v2p1|            229|         11,161<br />(68.12%)|      1,472,366<br />(LDIR x 3.90)|
|MegaLZ|unmegalz_small_v2|             92|         11,161<br />(68.12%)|      2,371,355<br />(LDIR x 6.29)|
|Pletter|unpletter|            170|         11,105<br />(67.77%)|      2,137,378<br />(LDIR x 5.67)|
|Pletter|unpletter_180|            146|         11,105<br />(67.77%)|      2,006,049<br />(LDIR x 5.32)|
|Shrinkler|shrinkler_recall_209|            209|         10,020<br />(61.15%)|    181,710,794<br />(LDIR x 482.19)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         10,020<br />(61.15%)|    181,095,920<br />(LDIR x 480.56)|
|zx7|dzx7_lom_v1|            214|         11,436<br />(69.79%)|      1,710,251<br />(LDIR x 4.53)|
|zx7|dzx7_lom_v1p1|            210|         11,436<br />(69.79%)|      1,655,558<br />(LDIR x 4.39)|
|zx7|dzx7_turbo|             88|         11,436<br />(69.79%)|      1,999,268<br />(LDIR x 5.30)|
|zx7|dzx7_standard|             69|         11,436<br />(69.79%)|      2,721,231<br />(LDIR x 7.22)|
|zx7b|dzx7b_fast|            191|         11,451<br />(69.89%)|      1,505,939<br />(LDIR x 3.99)|
|zx7b|dzx7b_fast_r800|            184|         11,451<br />(69.89%)|      1,486,973<br />(LDIR x 3.94)|
|zx7b|dzx7b_slow|             64|         11,451<br />(69.89%)|      2,465,218<br />(LDIR x 6.54)|
|zx7b|dzx7b_slow_r800|             64|         11,451<br />(69.89%)|      2,465,218<br />(LDIR x 6.54)|
|zx7mini|dzx7mini|             39|         13,182<br />(80.45%)|      1,423,611<br />(LDIR x 3.77)|



test data:KANJJ1.B04(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,521<br />(64.21%)|      4,260,868<br />(LDIR x 11.30)|
|ApLib|aplib247b|            249|         10,521<br />(64.21%)|      2,526,731<br />(LDIR x 6.70)|
|ApLib|aplib247b_180_minimal|            152|         10,521<br />(64.21%)|      3,197,914<br />(LDIR x 8.48)|
|ApLib|aplib247b_180_small|            171|         10,521<br />(64.21%)|      2,470,228<br />(LDIR x 6.55)|
|ApLib|aplib247b_180_fast|            234|         10,521<br />(64.21%)|      2,333,328<br />(LDIR x 6.19)|
|Exomizer2|deexo|            169|         10,415<br />(63.56%)|      7,416,607<br />(LDIR x 19.68)|
|Exomizer2|deexo_180|            166|         10,415<br />(63.56%)|      7,416,561<br />(LDIR x 19.68)|
|Exomizer2|deexo_180_fast_jp|            176|         10,415<br />(63.56%)|      6,334,154<br />(LDIR x 16.80)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,415<br />(63.56%)|      5,057,178<br />(LDIR x 13.42)|
|Exomizer3|deexo3p7|            176|         10,415<br />(63.56%)|      5,360,921<br />(LDIR x 14.22)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,415<br />(63.56%)|      4,602,224<br />(LDIR x 12.21)|
|Exomizer3|deexoopt_p7|            219|         10,415<br />(63.56%)|      4,200,109<br />(LDIR x 11.14)|
|Exomizer3|deexoopt_f3_p7|            212|         10,415<br />(63.56%)|      4,039,310<br />(LDIR x 10.71)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,415<br />(63.56%)|      4,205,016<br />(LDIR x 11.15)|
|Exomizer3|deexo3|            191|         10,415<br />(63.56%)|      4,507,532<br />(LDIR x 11.96)|
|hrust|dehrust_ix|            234|         10,679<br />(65.17%)|      3,238,228<br />(LDIR x 8.59)|
|hrust|dehrust_ix_232b|            232|         10,679<br />(65.17%)|      3,230,427<br />(LDIR x 8.57)|
|hrust|dehrust_hl|            226|         10,679<br />(65.17%)|      3,213,567<br />(LDIR x 8.52)|
|hrust|dehrust_stk|            209|         10,679<br />(65.17%)|      2,950,117<br />(LDIR x 7.82)|
|lz4|lz4dec|             97|         12,673<br />(77.34%)|        825,069<br />(LDIR x 2.18)|
|lz4|unlz4_spke|            103|         12,673<br />(77.34%)|        747,091<br />(LDIR x 1.98)|
|lz4|unlz4_spke_fast|             96|         12,673<br />(77.34%)|        711,053<br />(LDIR x 1.88)|
|lz4|unlz4_spke_small|             65|         12,673<br />(77.34%)|        739,669<br />(LDIR x 1.96)|
|lz48|lz48decrunch\_v006\_|             70|         13,960<br />(85.20%)|        673,078<br />(LDIR x 1.78)|
|lz48|lz48decrunch_v006__180|             71|         13,960<br />(85.20%)|        636,201<br />(LDIR x 1.68)|
|lz49|lz49decrunch_v001|            106|         13,717<br />(83.72%)|        784,719<br />(LDIR x 2.08)|
|lz49|lz49decrunch_v001_180|            101|         13,717<br />(83.72%)|        758,523<br />(LDIR x 2.01)|
|lze|lzdec|            119|         11,373<br />(69.41%)|      1,480,839<br />(LDIR x 3.92)|
|lze|dlze_fast|             90|         11,373<br />(69.41%)|      1,202,079<br />(LDIR x 3.18)|
|lze|dlze_small|             82|         11,373<br />(69.41%)|      1,498,278<br />(LDIR x 3.97)|
|lzee|dlzee_fast|             84|         11,369<br />(69.39%)|      1,141,659<br />(LDIR x 3.02)|
|lzee|dlzee_small|             76|         11,369<br />(69.39%)|      1,437,858<br />(LDIR x 3.81)|
|lzsa1|unlzsa1_fast|            109|         12,189<br />(74.39%)|        720,251<br />(LDIR x 1.91)|
|lzsa1|unlzsa1_small|             67|         12,189<br />(74.39%)|        818,902<br />(LDIR x 2.17)|
|lzsa2|unlzsa2_fast|            216|         10,937<br />(66.75%)|      1,129,870<br />(LDIR x 2.99)|
|lzsa2|unlzsa2_fast_180|            214|         10,937<br />(66.75%)|      1,150,494<br />(LDIR x 3.05)|
|lzsa2|unlzsa2_small|            139|         10,937<br />(66.75%)|      1,299,272<br />(LDIR x 3.44)|
|lzsa2|unlzsa2_small_180|            137|         10,937<br />(66.75%)|      1,319,896<br />(LDIR x 3.50)|
|MegaLZ|megalz_dec40|            110|         11,016<br />(67.23%)|      3,271,673<br />(LDIR x 8.68)|
|MegaLZ|unmegalz_fast_v2|            233|         11,016<br />(67.23%)|      1,479,510<br />(LDIR x 3.92)|
|MegaLZ|unmegalz_fast_v2p1|            229|         11,016<br />(67.23%)|      1,467,286<br />(LDIR x 3.89)|
|MegaLZ|unmegalz_small_v2|             92|         11,016<br />(67.23%)|      2,355,764<br />(LDIR x 6.25)|
|Pletter|unpletter|            170|         10,992<br />(67.08%)|      2,130,343<br />(LDIR x 5.65)|
|Pletter|unpletter_180|            146|         10,992<br />(67.08%)|      2,000,018<br />(LDIR x 5.30)|
|Shrinkler|shrinkler_recall_209|            209|          9,876<br />(60.27%)|    179,896,027<br />(LDIR x 477.38)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          9,876<br />(60.27%)|    179,307,106<br />(LDIR x 475.82)|
|zx7|dzx7_lom_v1|            214|         11,337<br />(69.19%)|      1,707,459<br />(LDIR x 4.53)|
|zx7|dzx7_lom_v1p1|            210|         11,337<br />(69.19%)|      1,652,859<br />(LDIR x 4.38)|
|zx7|dzx7_turbo|             88|         11,337<br />(69.19%)|      1,995,177<br />(LDIR x 5.29)|
|zx7|dzx7_standard|             69|         11,337<br />(69.19%)|      2,711,216<br />(LDIR x 7.19)|
|zx7b|dzx7b_fast|            191|         11,327<br />(69.13%)|      1,521,877<br />(LDIR x 4.03)|
|zx7b|dzx7b_fast_r800|            184|         11,327<br />(69.13%)|      1,502,566<br />(LDIR x 3.98)|
|zx7b|dzx7b_slow|             64|         11,327<br />(69.13%)|      2,488,567<br />(LDIR x 6.60)|
|zx7b|dzx7b_slow_r800|             64|         11,327<br />(69.13%)|      2,488,567<br />(LDIR x 6.60)|
|zx7mini|dzx7mini|             39|         13,091<br />(79.90%)|      1,419,494<br />(LDIR x 3.76)|



test data:KANJJ1.B05(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,455<br />(63.81%)|      4,226,479<br />(LDIR x 11.21)|
|ApLib|aplib247b|            249|         10,455<br />(63.81%)|      2,501,490<br />(LDIR x 6.63)|
|ApLib|aplib247b_180_minimal|            152|         10,455<br />(63.81%)|      3,170,556<br />(LDIR x 8.41)|
|ApLib|aplib247b_180_small|            171|         10,455<br />(63.81%)|      2,447,398<br />(LDIR x 6.49)|
|ApLib|aplib247b_180_fast|            234|         10,455<br />(63.81%)|      2,309,474<br />(LDIR x 6.12)|
|Exomizer2|deexo|            169|         10,348<br />(63.15%)|      7,475,213<br />(LDIR x 19.83)|
|Exomizer2|deexo_180|            166|         10,348<br />(63.15%)|      7,475,183<br />(LDIR x 19.83)|
|Exomizer2|deexo_180_fast_jp|            176|         10,348<br />(63.15%)|      6,378,127<br />(LDIR x 16.92)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,348<br />(63.15%)|      5,088,918<br />(LDIR x 13.50)|
|Exomizer3|deexo3p7|            176|         10,347<br />(63.15%)|      5,383,242<br />(LDIR x 14.28)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,347<br />(63.15%)|      4,616,542<br />(LDIR x 12.25)|
|Exomizer3|deexoopt_p7|            219|         10,347<br />(63.15%)|      4,216,060<br />(LDIR x 11.18)|
|Exomizer3|deexoopt_f3_p7|            212|         10,347<br />(63.15%)|      4,056,164<br />(LDIR x 10.76)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,347<br />(63.15%)|      4,221,173<br />(LDIR x 11.20)|
|Exomizer3|deexo3|            191|         10,347<br />(63.15%)|      4,521,335<br />(LDIR x 11.99)|
|hrust|dehrust_ix|            234|         10,597<br />(64.67%)|      3,215,584<br />(LDIR x 8.53)|
|hrust|dehrust_ix_232b|            232|         10,597<br />(64.67%)|      3,207,757<br />(LDIR x 8.51)|
|hrust|dehrust_hl|            226|         10,597<br />(64.67%)|      3,188,522<br />(LDIR x 8.46)|
|hrust|dehrust_stk|            209|         10,597<br />(64.67%)|      2,927,176<br />(LDIR x 7.76)|
|lz4|lz4dec|             97|         12,535<br />(76.50%)|        814,595<br />(LDIR x 2.16)|
|lz4|unlz4_spke|            103|         12,535<br />(76.50%)|        738,295<br />(LDIR x 1.95)|
|lz4|unlz4_spke_fast|             96|         12,535<br />(76.50%)|        703,309<br />(LDIR x 1.86)|
|lz4|unlz4_spke_small|             65|         12,535<br />(76.50%)|        731,295<br />(LDIR x 1.94)|
|lz48|lz48decrunch\_v006\_|             70|         13,952<br />(85.15%)|        667,919<br />(LDIR x 1.77)|
|lz48|lz48decrunch_v006__180|             71|         13,952<br />(85.15%)|        631,875<br />(LDIR x 1.67)|
|lz49|lz49decrunch_v001|            106|         13,674<br />(83.45%)|        789,919<br />(LDIR x 2.09)|
|lz49|lz49decrunch_v001_180|            101|         13,674<br />(83.45%)|        764,023<br />(LDIR x 2.02)|
|lze|lzdec|            119|         11,283<br />(68.86%)|      1,468,273<br />(LDIR x 3.89)|
|lze|dlze_fast|             90|         11,283<br />(68.86%)|      1,194,199<br />(LDIR x 3.16)|
|lze|dlze_small|             82|         11,283<br />(68.86%)|      1,485,791<br />(LDIR x 3.94)|
|lzee|dlzee_fast|             84|         11,279<br />(68.84%)|      1,133,629<br />(LDIR x 3.00)|
|lzee|dlzee_small|             76|         11,279<br />(68.84%)|      1,425,221<br />(LDIR x 3.78)|
|lzsa1|unlzsa1_fast|            109|         12,075<br />(73.69%)|        721,692<br />(LDIR x 1.91)|
|lzsa1|unlzsa1_small|             67|         12,075<br />(73.69%)|        820,158<br />(LDIR x 2.17)|
|lzsa2|unlzsa2_fast|            216|         10,849<br />(66.21%)|      1,117,616<br />(LDIR x 2.96)|
|lzsa2|unlzsa2_fast_180|            214|         10,849<br />(66.21%)|      1,137,944<br />(LDIR x 3.01)|
|lzsa2|unlzsa2_small|            139|         10,849<br />(66.21%)|      1,283,878<br />(LDIR x 3.40)|
|lzsa2|unlzsa2_small_180|            137|         10,849<br />(66.21%)|      1,304,206<br />(LDIR x 3.46)|
|MegaLZ|megalz_dec40|            110|         11,012<br />(67.21%)|      3,284,220<br />(LDIR x 8.71)|
|MegaLZ|unmegalz_fast_v2|            233|         11,012<br />(67.21%)|      1,484,175<br />(LDIR x 3.93)|
|MegaLZ|unmegalz_fast_v2p1|            229|         11,012<br />(67.21%)|      1,471,821<br />(LDIR x 3.90)|
|MegaLZ|unmegalz_small_v2|             92|         11,012<br />(67.21%)|      2,369,275<br />(LDIR x 6.28)|
|Pletter|unpletter|            170|         10,908<br />(66.57%)|      2,106,071<br />(LDIR x 5.58)|
|Pletter|unpletter_180|            146|         10,908<br />(66.57%)|      1,977,349<br />(LDIR x 5.24)|
|Shrinkler|shrinkler_recall_209|            209|          9,808<br />(59.86%)|    178,129,932<br />(LDIR x 472.69)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          9,808<br />(59.86%)|    177,528,837<br />(LDIR x 471.10)|
|zx7|dzx7_lom_v1|            214|         11,331<br />(69.15%)|      1,699,269<br />(LDIR x 4.50)|
|zx7|dzx7_lom_v1p1|            210|         11,331<br />(69.15%)|      1,645,034<br />(LDIR x 4.36)|
|zx7|dzx7_turbo|             88|         11,331<br />(69.15%)|      1,984,344<br />(LDIR x 5.26)|
|zx7|dzx7_standard|             69|         11,331<br />(69.15%)|      2,693,915<br />(LDIR x 7.14)|
|zx7b|dzx7b_fast|            191|         11,341<br />(69.21%)|      1,500,846<br />(LDIR x 3.98)|
|zx7b|dzx7b_fast_r800|            184|         11,341<br />(69.21%)|      1,481,885<br />(LDIR x 3.93)|
|zx7b|dzx7b_slow|             64|         11,341<br />(69.21%)|      2,450,589<br />(LDIR x 6.50)|
|zx7b|dzx7b_slow_r800|             64|         11,341<br />(69.21%)|      2,450,589<br />(LDIR x 6.50)|
|zx7mini|dzx7mini|             39|         13,039<br />(79.58%)|      1,430,071<br />(LDIR x 3.79)|



test data:KANJJ1.B06(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|         10,817<br />(66.02%)|      4,400,357<br />(LDIR x 11.67)|
|ApLib|aplib247b|            249|         10,817<br />(66.02%)|      2,604,239<br />(LDIR x 6.91)|
|ApLib|aplib247b_180_minimal|            152|         10,817<br />(66.02%)|      3,298,116<br />(LDIR x 8.75)|
|ApLib|aplib247b_180_small|            171|         10,817<br />(66.02%)|      2,545,053<br />(LDIR x 6.75)|
|ApLib|aplib247b_180_fast|            234|         10,817<br />(66.02%)|      2,402,411<br />(LDIR x 6.37)|
|Exomizer2|deexo|            169|         10,650<br />(65.00%)|      7,752,805<br />(LDIR x 20.57)|
|Exomizer2|deexo_180|            166|         10,650<br />(65.00%)|      7,752,735<br />(LDIR x 20.57)|
|Exomizer2|deexo_180_fast_jp|            176|         10,650<br />(65.00%)|      6,611,348<br />(LDIR x 17.54)|
|Exomizer2|deexoopt_f3_180_p0|            242|         10,650<br />(65.00%)|      5,263,931<br />(LDIR x 13.96)|
|Exomizer3|deexo3p7|            176|         10,650<br />(65.00%)|      5,584,601<br />(LDIR x 14.81)|
|Exomizer3|deexo3p7_fast_jp|            181|         10,650<br />(65.00%)|      4,783,085<br />(LDIR x 12.69)|
|Exomizer3|deexoopt_p7|            219|         10,650<br />(65.00%)|      4,366,865<br />(LDIR x 11.58)|
|Exomizer3|deexoopt_f3_p7|            212|         10,650<br />(65.00%)|      4,201,463<br />(LDIR x 11.14)|
|Exomizer3|deexoopt_f3_180_p7|            219|         10,650<br />(65.00%)|      4,371,843<br />(LDIR x 11.60)|
|Exomizer3|deexo3|            191|         10,650<br />(65.00%)|      4,684,621<br />(LDIR x 12.43)|
|hrust|dehrust_ix|            234|         10,906<br />(66.56%)|      3,290,847<br />(LDIR x 8.73)|
|hrust|dehrust_ix_232b|            232|         10,906<br />(66.56%)|      3,282,870<br />(LDIR x 8.71)|
|hrust|dehrust_hl|            226|         10,906<br />(66.56%)|      3,266,721<br />(LDIR x 8.66)|
|hrust|dehrust_stk|            209|         10,906<br />(66.56%)|      2,995,867<br />(LDIR x 7.95)|
|lz4|lz4dec|             97|         12,972<br />(79.17%)|        820,307<br />(LDIR x 2.17)|
|lz4|unlz4_spke|            103|         12,972<br />(79.17%)|        743,423<br />(LDIR x 1.97)|
|lz4|unlz4_spke_fast|             96|         12,972<br />(79.17%)|        708,297<br />(LDIR x 1.87)|
|lz4|unlz4_spke_small|             65|         12,972<br />(79.17%)|        736,149<br />(LDIR x 1.95)|
|lz48|lz48decrunch\_v006\_|             70|         14,179<br />(86.54%)|        656,277<br />(LDIR x 1.74)|
|lz48|lz48decrunch_v006__180|             71|         14,179<br />(86.54%)|        622,088<br />(LDIR x 1.65)|
|lz49|lz49decrunch_v001|            106|         13,920<br />(84.96%)|        774,080<br />(LDIR x 2.05)|
|lz49|lz49decrunch_v001_180|            101|         13,920<br />(84.96%)|        749,276<br />(LDIR x 1.98)|
|lze|lzdec|            119|         11,634<br />(71.00%)|      1,504,858<br />(LDIR x 3.99)|
|lze|dlze_fast|             90|         11,634<br />(71.00%)|      1,222,448<br />(LDIR x 3.24)|
|lze|dlze_small|             82|         11,634<br />(71.00%)|      1,523,332<br />(LDIR x 4.04)|
|lzee|dlzee_fast|             84|         11,630<br />(70.98%)|      1,159,478<br />(LDIR x 3.07)|
|lzee|dlzee_small|             76|         11,630<br />(70.98%)|      1,460,362<br />(LDIR x 3.87)|
|lzsa1|unlzsa1_fast|            109|         12,507<br />(76.33%)|        726,941<br />(LDIR x 1.92)|
|lzsa1|unlzsa1_small|             67|         12,507<br />(76.33%)|        826,512<br />(LDIR x 2.19)|
|lzsa2|unlzsa2_fast|            216|         11,276<br />(68.82%)|      1,145,540<br />(LDIR x 3.03)|
|lzsa2|unlzsa2_fast_180|            214|         11,276<br />(68.82%)|      1,166,604<br />(LDIR x 3.09)|
|lzsa2|unlzsa2_small|            139|         11,276<br />(68.82%)|      1,318,342<br />(LDIR x 3.49)|
|lzsa2|unlzsa2_small_180|            137|         11,276<br />(68.82%)|      1,339,406<br />(LDIR x 3.55)|
|MegaLZ|megalz_dec40|            110|         11,281<br />(68.85%)|      3,337,059<br />(LDIR x 8.85)|
|MegaLZ|unmegalz_fast_v2|            233|         11,281<br />(68.85%)|      1,499,052<br />(LDIR x 3.97)|
|MegaLZ|unmegalz_fast_v2p1|            229|         11,281<br />(68.85%)|      1,486,128<br />(LDIR x 3.94)|
|MegaLZ|unmegalz_small_v2|             92|         11,281<br />(68.85%)|      2,399,747<br />(LDIR x 6.36)|
|Pletter|unpletter|            170|         11,252<br />(68.67%)|      2,178,723<br />(LDIR x 5.78)|
|Pletter|unpletter_180|            146|         11,252<br />(68.67%)|      2,044,469<br />(LDIR x 5.42)|
|Shrinkler|shrinkler_recall_209|            209|         10,148<br />(61.93%)|    184,730,043<br />(LDIR x 490.21)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|         10,148<br />(61.93%)|    184,115,281<br />(LDIR x 488.57)|
|zx7|dzx7_lom_v1|            214|         11,612<br />(70.87%)|      1,725,304<br />(LDIR x 4.57)|
|zx7|dzx7_lom_v1p1|            210|         11,612<br />(70.87%)|      1,670,306<br />(LDIR x 4.43)|
|zx7|dzx7_turbo|             88|         11,612<br />(70.87%)|      2,015,890<br />(LDIR x 5.34)|
|zx7|dzx7_standard|             69|         11,612<br />(70.87%)|      2,745,472<br />(LDIR x 7.28)|
|zx7b|dzx7b_fast|            191|         11,601<br />(70.80%)|      1,529,557<br />(LDIR x 4.05)|
|zx7b|dzx7b_fast_r800|            184|         11,601<br />(70.80%)|      1,510,031<br />(LDIR x 4.00)|
|zx7b|dzx7b_slow|             64|         11,601<br />(70.80%)|      2,506,261<br />(LDIR x 6.65)|
|zx7b|dzx7b_slow_r800|             64|         11,601<br />(70.80%)|      2,506,261<br />(LDIR x 6.65)|
|zx7mini|dzx7mini|             39|         13,311<br />(81.24%)|      1,427,925<br />(LDIR x 3.78)|



test data:KANJJ1.B07(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|ApLib|aplib156b|            156|          9,798<br />(59.80%)|      3,999,198<br />(LDIR x 10.61)|
|ApLib|aplib247b|            249|          9,798<br />(59.80%)|      2,383,274<br />(LDIR x 6.32)|
|ApLib|aplib247b_180_minimal|            152|          9,798<br />(59.80%)|      3,006,837<br />(LDIR x 7.97)|
|ApLib|aplib247b_180_small|            171|          9,798<br />(59.80%)|      2,328,889<br />(LDIR x 6.18)|
|ApLib|aplib247b_180_fast|            234|          9,798<br />(59.80%)|      2,203,217<br />(LDIR x 5.84)|
|Exomizer2|deexo|            169|          9,701<br />(59.21%)|      7,135,248<br />(LDIR x 18.93)|
|Exomizer2|deexo_180|            166|          9,701<br />(59.21%)|      7,135,142<br />(LDIR x 18.93)|
|Exomizer2|deexo_180_fast_jp|            176|          9,701<br />(59.21%)|      6,094,613<br />(LDIR x 16.17)|
|Exomizer2|deexoopt_f3_180_p0|            242|          9,701<br />(59.21%)|      4,868,668<br />(LDIR x 12.91)|
|Exomizer3|deexo3p7|            176|          9,701<br />(59.21%)|      5,093,013<br />(LDIR x 13.51)|
|Exomizer3|deexo3p7_fast_jp|            181|          9,701<br />(59.21%)|      4,381,376<br />(LDIR x 11.62)|
|Exomizer3|deexoopt_p7|            219|          9,701<br />(59.21%)|      4,006,872<br />(LDIR x 10.63)|
|Exomizer3|deexoopt_f3_p7|            212|          9,701<br />(59.21%)|      3,855,266<br />(LDIR x 10.23)|
|Exomizer3|deexoopt_f3_180_p7|            219|          9,701<br />(59.21%)|      4,012,895<br />(LDIR x 10.64)|
|Exomizer3|deexo3|            191|          9,701<br />(59.21%)|      4,289,448<br />(LDIR x 11.38)|
|hrust|dehrust_ix|            234|          9,937<br />(60.65%)|      3,015,024<br />(LDIR x 8.00)|
|hrust|dehrust_ix_232b|            232|          9,937<br />(60.65%)|      3,007,727<br />(LDIR x 7.98)|
|hrust|dehrust_hl|            226|          9,937<br />(60.65%)|      2,993,509<br />(LDIR x 7.94)|
|hrust|dehrust_stk|            209|          9,937<br />(60.65%)|      2,749,638<br />(LDIR x 7.29)|
|lz4|lz4dec|             97|         11,830<br />(72.20%)|        761,648<br />(LDIR x 2.02)|
|lz4|unlz4_spke|            103|         11,830<br />(72.20%)|        694,239<br />(LDIR x 1.84)|
|lz4|unlz4_spke_fast|             96|         11,830<br />(72.20%)|        664,044<br />(LDIR x 1.76)|
|lz4|unlz4_spke_small|             65|         11,830<br />(72.20%)|        688,706<br />(LDIR x 1.82)|
|lz48|lz48decrunch\_v006\_|             70|         13,048<br />(79.63%)|        634,564<br />(LDIR x 1.68)|
|lz48|lz48decrunch_v006__180|             71|         13,048<br />(79.63%)|        603,758<br />(LDIR x 1.60)|
|lz49|lz49decrunch_v001|            106|         12,778<br />(77.99%)|        736,853<br />(LDIR x 1.95)|
|lz49|lz49decrunch_v001_180|            101|         12,778<br />(77.99%)|        714,100<br />(LDIR x 1.89)|
|lze|lzdec|            119|         10,578<br />(64.56%)|      1,393,220<br />(LDIR x 3.69)|
|lze|dlze_fast|             90|         10,578<br />(64.56%)|      1,134,142<br />(LDIR x 3.00)|
|lze|dlze_small|             82|         10,578<br />(64.56%)|      1,407,422<br />(LDIR x 3.73)|
|lzee|dlzee_fast|             84|         10,574<br />(64.53%)|      1,079,152<br />(LDIR x 2.86)|
|lzee|dlzee_small|             76|         10,574<br />(64.53%)|      1,352,432<br />(LDIR x 3.58)|
|lzsa1|unlzsa1_fast|            109|         11,388<br />(69.50%)|        692,271<br />(LDIR x 1.83)|
|lzsa1|unlzsa1_small|             67|         11,388<br />(69.50%)|        781,741<br />(LDIR x 2.07)|
|lzsa2|unlzsa2_fast|            216|         10,248<br />(62.54%)|      1,067,604<br />(LDIR x 2.83)|
|lzsa2|unlzsa2_fast_180|            214|         10,248<br />(62.54%)|      1,086,460<br />(LDIR x 2.88)|
|lzsa2|unlzsa2_small|            139|         10,248<br />(62.54%)|      1,224,147<br />(LDIR x 3.24)|
|lzsa2|unlzsa2_small_180|            137|         10,248<br />(62.54%)|      1,243,003<br />(LDIR x 3.29)|
|MegaLZ|megalz_dec40|            110|         10,247<br />(62.54%)|      3,070,083<br />(LDIR x 8.14)|
|MegaLZ|unmegalz_fast_v2|            233|         10,247<br />(62.54%)|      1,401,983<br />(LDIR x 3.72)|
|MegaLZ|unmegalz_fast_v2p1|            229|         10,247<br />(62.54%)|      1,389,844<br />(LDIR x 3.68)|
|MegaLZ|unmegalz_small_v2|             92|         10,247<br />(62.54%)|      2,224,451<br />(LDIR x 5.90)|
|Pletter|unpletter|            170|         10,245<br />(62.53%)|      1,996,630<br />(LDIR x 5.29)|
|Pletter|unpletter_180|            146|         10,245<br />(62.53%)|      1,875,171<br />(LDIR x 4.97)|
|Shrinkler|shrinkler_recall_209|            209|          9,212<br />(56.22%)|    166,951,906<br />(LDIR x 443.03)|
|Shrinkler|shrinkler_recall_209_r800_rom|            208|          9,212<br />(56.22%)|    166,400,763<br />(LDIR x 441.57)|
|zx7|dzx7_lom_v1|            214|         10,572<br />(64.52%)|      1,611,251<br />(LDIR x 4.27)|
|zx7|dzx7_lom_v1p1|            210|         10,572<br />(64.52%)|      1,560,665<br />(LDIR x 4.14)|
|zx7|dzx7_turbo|             88|         10,572<br />(64.52%)|      1,878,347<br />(LDIR x 4.98)|
|zx7|dzx7_standard|             69|         10,572<br />(64.52%)|      2,546,593<br />(LDIR x 6.75)|
|zx7b|dzx7b_fast|            191|         10,586<br />(64.61%)|      1,431,824<br />(LDIR x 3.79)|
|zx7b|dzx7b_fast_r800|            184|         10,586<br />(64.61%)|      1,413,948<br />(LDIR x 3.75)|
|zx7b|dzx7b_slow|             64|         10,586<br />(64.61%)|      2,328,107<br />(LDIR x 6.17)|
|zx7b|dzx7b_slow_r800|             64|         10,586<br />(64.61%)|      2,328,107<br />(LDIR x 6.17)|
|zx7mini|dzx7mini|             39|         12,245<br />(74.73%)|      1,344,248<br />(LDIR x 3.56)|



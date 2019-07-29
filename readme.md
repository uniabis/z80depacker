
# Depackers for Z80

## Packers

### [Exomizer2](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P0)

License:LGPL

### [Exomizer3](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P7)

License:LGPL

### [hruST mhmt](https://github.com/lvd2/mhmt)   (-hst)

License:GPLv3

[mhmt google code archive](https://code.google.com/archive/p/mhmt/source/default/source)

### [LZ4](https://github.com/lz4/lz4) v1.9.1 (-9)

[lz4stream for Z80](http://mydocuments.g2.xrea.com/html/p6/randd.html)

### [LZ48/49](http://www.cpcwiki.eu/forum/programming/lz48-cruncherdecruncher/)

### [LZE](http://gorry.haun.org/pw/?lze) 20080228a

[LZEe - LZE enhancement for z80](https://github.com/uniabis/lzee)

### [lzsa1](https://github.com/emmanuel-marty/lzsa) 1.0.6(-f1 -r)

### [lzsa2](https://github.com/emmanuel-marty/lzsa) 1.0.6(-f2 -r)

### MegaLZ v4.89

### [Pletter](http://www.xl2s.tk/) v0.5c1

License:Mit

### [Shrinkler](https://github.com/askeksa/Shrinkler) v4.5(-d -9)

[Shrinkler Z80](https://cpcrulez.fr/applications_tools_cruncher_shrinkler_Z80.htm)

### [zx7b](https://github.com/antoniovillena/zx7b) v1.01

License:CC-BY-SA

## Compression rate



test data:DEOCM-PLD-CV BIOS(16x16KB)

|SectionName|Exomizer2|Exomizer3|hrust|lz4|lz48|lz49|lze|lzee|lzsa1|lzsa2|megalz|pletter|shrinkler|zx7b|
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
|MEGASDHC.B00|9,373|9,373|9,397|10,839|10,717|10,628|10,092|10,088|10,339|9,741|9,718|9,706|8,984|9,762|
|MEGASDHC.B01|4,902|4,902|4,923|5,798|5,752|5,559|5,463|5,459|5,392|5,129|5,124|5,083|4,680|5,091|
|MEGASDHC.B02|12,494|12,494|12,592|14,749|14,588|14,512|13,472|13,468|14,044|13,204|12,965|12,945|12,148|13,103|
|MEGASDHC.B03|12,297|12,297|12,320|14,298|14,250|14,030|13,187|13,183|13,703|12,888|12,660|12,700|11,916|12,810|
|MSX2MAIN.B00|12,740|12,739|12,790|14,847|14,268|14,196|13,698|13,694|14,087|13,372|13,072|13,205|12,276|13,248|
|MSX2MAIN.B01|13,402|13,402|13,485|15,454|15,305|15,254|14,389|14,385|14,892|14,123|13,917|13,909|13,100|14,002|
|MSXMUSIC.B00|10,068|10,068|10,118|11,634|12,121|11,980|10,830|10,826|11,049|10,420|10,407|10,466|9,536|10,495|
|MSX2EXT.B00|12,351|12,351|12,370|14,583|14,074|13,969|13,303|13,299|13,720|12,882|12,833|12,858|11,820|12,964|
|KANJJ1.B00|6,097|6,097|6,454|8,140|8,167|7,824|7,027|7,023|7,317|6,523|6,514|6,511|5,728|6,591|
|KANJJ1.B01|3,975|3,974|4,241|5,472|5,532|5,240|4,664|4,660|4,805|4,297|4,320|4,269|3,700|4,424|
|KANJJ1.B02|10,688|10,688|10,960|13,019|14,290|13,985|11,696|11,692|12,545|11,428|11,362|11,340|10,212|11,629|
|KANJJ1.B03|10,510|10,509|10,765|12,751|14,024|13,761|11,493|11,489|12,253|11,165|11,161|11,105|10,020|11,451|
|KANJJ1.B04|10,415|10,415|10,708|12,688|13,960|13,717|11,373|11,369|12,190|11,070|11,016|10,992|9,876|11,327|
|KANJJ1.B05|10,348|10,347|10,610|12,552|13,952|13,674|11,283|11,279|12,075|10,960|11,012|10,908|9,808|11,341|
|KANJJ1.B06|10,650|10,650|10,934|12,993|14,179|13,920|11,634|11,630|12,508|11,386|11,281|11,252|10,148|11,601|
|KANJJ1.B07|9,701|9,701|9,953|11,840|13,048|12,778|10,578|10,574|11,389|10,373|10,247|10,245|9,212|10,586|
|ALL|160,011|160,007|162,620|191,657|198,227|195,027|174,182|174,118|182,308|168,961|167,609|167,494|153,164|170,425|



## Decompression speed



test data:ALL(16*16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|        160,011|    108,490,817|
|Exomizer2|deexo_180|            167|        160,011|    108,508,449|
|Exomizer2|deexo_180_fast|            172|        160,011|     94,297,523|
|Exomizer2|deexo_180_fast_jp|            183|        160,011|     93,483,897|
|Exomizer3|deexo3p7|            180|        160,007|     86,959,037|
|Exomizer3|deexo3p7_fast|            187|        160,007|     75,371,849|
|Exomizer3|deexo3p7_fast_jp|            189|        160,007|     75,249,505|
|Exomizer3|deexo3|            214|        160,007|     79,238,205|
|hrust|dehrust_ix|            234|        162,620|     45,607,398|
|hrust|dehrust_stk|            209|        162,620|     41,333,579|
|lz4|lz4dec|             97|        191,657|     11,017,032|
|lz4|lz4dec_ram|            100|        191,657|     10,659,472|
|lz4|lz4dec_rom|            103|        191,657|     11,011,046|
|lz48|lz48decrunch_v006|             84|        198,227|     10,096,491|
|lz48|lz48decrunch_v006_|             70|        198,227|      9,987,125|
|lz48|lz48decrunch_v006__180|             74|        198,227|      9,880,129|
|lz49|lz49decrunch_v001|            106|        195,027|     11,349,204|
|lz49|lz49decrunch_v001_180|            112|        195,027|     11,315,936|
|lze|lzdec|            119|        174,182|     21,831,226|
|lze|lzdec_104|            104|        174,182|     20,141,132|
|lzee|lzee_dec_area|             88|        174,118|     25,615,019|
|lzee|lzee_dec|             99|        174,118|     19,608,607|
|lzee|lzee_dec_speed|            102|        174,118|     19,569,112|
|lzsa1|unlzsa1_fast_v1|            110|        182,308|     10,885,558|
|lzsa1|unlzsa1_small_v1|             69|        182,308|     11,763,022|
|lzsa2|unlzsa2_fast_v1|            218|        168,961|     16,909,924|
|lzsa2|unlzsa2_small_v1|            145|        168,961|     18,624,478|
|lzsa2|unlzsa2_fast_v1_180|            216|        168,961|     17,181,652|
|lzsa2|unlzsa2_small_v1_180|            145|        168,961|     19,235,866|
|MegaLZ|megalz_dec40|            110|        167,609|     45,653,296|
|Pletter|unpletter|            170|        167,494|     28,812,190|
|Pletter|unpletter_180|            169|        167,494|     28,812,318|
|Shrinkler|shrinkler_recall_209|            209|        153,164|  2,648,153,963|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|        153,164|  2,648,153,963|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|        153,164|  2,699,900,331|
|zx7b|dzx7b_fast|            191|        170,425|     20,907,617|
|zx7b|dzx7b_fast_r800|            193|        170,425|     21,155,467|
|zx7b|dzx7b_slow|             64|        170,425|     33,688,687|
|zx7b|dzx7b_slow_r800|             65|        170,425|     33,936,537|



test data:MEGASDHC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          9,373|      5,908,411|
|Exomizer2|deexo_180|            167|          9,373|      5,909,513|
|Exomizer2|deexo_180_fast|            172|          9,373|      5,147,818|
|Exomizer2|deexo_180_fast_jp|            183|          9,373|      5,103,275|
|Exomizer3|deexo3p7|            180|          9,373|      4,922,230|
|Exomizer3|deexo3p7_fast|            187|          9,373|      4,268,974|
|Exomizer3|deexo3p7_fast_jp|            189|          9,373|      4,262,084|
|Exomizer3|deexo3|            214|          9,373|      4,480,913|
|hrust|dehrust_ix|            234|          9,397|      2,400,116|
|hrust|dehrust_stk|            209|          9,397|      2,160,551|
|lz4|lz4dec|             97|         10,839|        570,164|
|lz4|lz4dec_ram|            100|         10,839|        556,668|
|lz4|lz4dec_rom|            103|         10,839|        569,521|
|lz48|lz48decrunch_v006|             84|         10,717|        562,276|
|lz48|lz48decrunch_v006_|             70|         10,717|        557,554|
|lz48|lz48decrunch_v006__180|             74|         10,717|        552,447|
|lz49|lz49decrunch_v001|            106|         10,628|        608,577|
|lz49|lz49decrunch_v001_180|            112|         10,628|        607,777|
|lze|lzdec|            119|         10,092|      1,213,495|
|lze|lzdec_104|            104|         10,092|      1,132,145|
|lzee|lzee_dec_area|             88|         10,088|      1,461,777|
|lzee|lzee_dec|             99|         10,088|      1,113,895|
|lzee|lzee_dec_speed|            102|         10,088|      1,112,077|
|lzsa1|unlzsa1_fast_v1|            110|         10,339|        574,795|
|lzsa1|unlzsa1_small_v1|             69|         10,339|        610,050|
|lzsa2|unlzsa2_fast_v1|            218|          9,741|        886,460|
|lzsa2|unlzsa2_small_v1|            145|          9,741|        972,242|
|lzsa2|unlzsa2_fast_v1_180|            216|          9,741|        898,956|
|lzsa2|unlzsa2_small_v1_180|            145|          9,741|      1,000,358|
|MegaLZ|megalz_dec40|            110|          9,718|      2,363,816|
|Pletter|unpletter|            170|          9,706|      1,459,575|
|Pletter|unpletter_180|            169|          9,706|      1,459,583|
|Shrinkler|shrinkler_recall_209|            209|          8,984|    147,898,055|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          8,984|    147,898,055|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          8,984|    150,852,880|
|zx7b|dzx7b_fast|            191|          9,762|      1,088,297|
|zx7b|dzx7b_fast_r800|            193|          9,762|      1,099,847|
|zx7b|dzx7b_slow|             64|          9,762|      1,718,914|
|zx7b|dzx7b_slow_r800|             65|          9,762|      1,730,464|



test data:MEGASDHC.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          4,902|      3,307,149|
|Exomizer2|deexo_180|            167|          4,902|      3,308,251|
|Exomizer2|deexo_180_fast|            172|          4,902|      2,910,319|
|Exomizer2|deexo_180_fast_jp|            183|          4,902|      2,887,830|
|Exomizer3|deexo3p7|            180|          4,902|      2,915,508|
|Exomizer3|deexo3p7_fast|            187|          4,902|      2,542,615|
|Exomizer3|deexo3p7_fast_jp|            189|          4,902|      2,538,875|
|Exomizer3|deexo3|            214|          4,902|      2,662,559|
|hrust|dehrust_ix|            234|          4,923|      1,520,370|
|hrust|dehrust_stk|            209|          4,923|      1,393,765|
|lz4|lz4dec|             97|          5,798|        517,676|
|lz4|lz4dec_ram|            100|          5,798|        507,660|
|lz4|lz4dec_rom|            103|          5,798|        517,433|
|lz48|lz48decrunch_v006|             84|          5,752|        506,229|
|lz48|lz48decrunch_v006_|             70|          5,752|        504,561|
|lz48|lz48decrunch_v006__180|             74|          5,752|        500,894|
|lz49|lz49decrunch_v001|            106|          5,559|        540,251|
|lz49|lz49decrunch_v001_180|            112|          5,559|        539,444|
|lze|lzdec|            119|          5,463|        846,520|
|lze|lzdec_104|            104|          5,463|        798,828|
|lzee|lzee_dec_area|             88|          5,459|        973,795|
|lzee|lzee_dec|             99|          5,459|        786,603|
|lzee|lzee_dec_speed|            102|          5,459|        785,523|
|lzsa1|unlzsa1_fast_v1|            110|          5,392|        504,002|
|lzsa1|unlzsa1_small_v1|             69|          5,392|        526,551|
|lzsa2|unlzsa2_fast_v1|            218|          5,129|        654,420|
|lzsa2|unlzsa2_small_v1|            145|          5,129|        701,616|
|lzsa2|unlzsa2_fast_v1_180|            216|          5,129|        661,412|
|lzsa2|unlzsa2_small_v1_180|            145|          5,129|        717,348|
|MegaLZ|megalz_dec40|            110|          5,124|      1,578,986|
|Pletter|unpletter|            170|          5,083|        905,030|
|Pletter|unpletter_180|            169|          5,083|        905,038|
|Shrinkler|shrinkler_recall_209|            209|          4,680|     78,117,653|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          4,680|     78,117,653|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          4,680|     79,661,805|
|zx7b|dzx7b_fast|            191|          5,091|        769,861|
|zx7b|dzx7b_fast_r800|            193|          5,091|        776,056|
|zx7b|dzx7b_slow|             64|          5,091|      1,109,193|
|zx7b|dzx7b_slow_r800|             65|          5,091|      1,115,388|



test data:MEGASDHC.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,494|      7,962,111|
|Exomizer2|deexo_180|            167|         12,494|      7,963,213|
|Exomizer2|deexo_180_fast|            172|         12,494|      6,909,258|
|Exomizer2|deexo_180_fast_jp|            183|         12,494|      6,846,963|
|Exomizer3|deexo3p7|            180|         12,494|      6,372,476|
|Exomizer3|deexo3p7_fast|            187|         12,494|      5,499,101|
|Exomizer3|deexo3p7_fast_jp|            189|         12,494|      5,490,187|
|Exomizer3|deexo3|            214|         12,494|      5,789,578|
|hrust|dehrust_ix|            234|         12,592|      3,184,499|
|hrust|dehrust_stk|            209|         12,592|      2,868,962|
|lz4|lz4dec|             97|         14,749|        630,168|
|lz4|lz4dec_ram|            100|         14,749|        612,424|
|lz4|lz4dec_rom|            103|         14,749|        629,391|
|lz48|lz48decrunch_v006|             84|         14,588|        597,859|
|lz48|lz48decrunch_v006_|             70|         14,588|        593,341|
|lz48|lz48decrunch_v006__180|             74|         14,588|        587,052|
|lz49|lz49decrunch_v001|            106|         14,512|        675,825|
|lz49|lz49decrunch_v001_180|            112|         14,512|        674,815|
|lze|lzdec|            119|         13,472|      1,536,039|
|lze|lzdec_104|            104|         13,472|      1,417,875|
|lzee|lzee_dec_area|             88|         13,468|      1,864,327|
|lzee|lzee_dec|             99|         13,468|      1,389,850|
|lzee|lzee_dec_speed|            102|         13,468|      1,387,184|
|lzsa1|unlzsa1_fast_v1|            110|         14,044|        651,640|
|lzsa1|unlzsa1_small_v1|             69|         14,044|        700,397|
|lzsa2|unlzsa2_fast_v1|            218|         13,204|      1,106,731|
|lzsa2|unlzsa2_small_v1|            145|         13,204|      1,222,304|
|lzsa2|unlzsa2_fast_v1_180|            216|         13,204|      1,125,027|
|lzsa2|unlzsa2_small_v1_180|            145|         13,204|      1,263,470|
|MegaLZ|megalz_dec40|            110|         12,965|      3,108,603|
|Pletter|unpletter|            170|         12,945|      1,990,443|
|Pletter|unpletter_180|            169|         12,945|      1,990,451|
|Shrinkler|shrinkler_recall_209|            209|         12,148|    204,353,362|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         12,148|    204,353,362|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         12,148|    208,379,158|
|zx7b|dzx7b_fast|            191|         13,103|      1,438,531|
|zx7b|dzx7b_fast_r800|            193|         13,103|      1,456,646|
|zx7b|dzx7b_slow|             64|         13,103|      2,374,575|
|zx7b|dzx7b_slow_r800|             65|         13,103|      2,392,690|



test data:MEGASDHC.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,297|      7,705,336|
|Exomizer2|deexo_180|            167|         12,297|      7,706,438|
|Exomizer2|deexo_180_fast|            172|         12,297|      6,703,199|
|Exomizer2|deexo_180_fast_jp|            183|         12,297|      6,645,222|
|Exomizer3|deexo3p7|            180|         12,297|      6,519,653|
|Exomizer3|deexo3p7_fast|            187|         12,297|      5,628,189|
|Exomizer3|deexo3p7_fast_jp|            189|         12,297|      5,618,973|
|Exomizer3|deexo3|            214|         12,297|      5,911,174|
|hrust|dehrust_ix|            234|         12,320|      2,994,167|
|hrust|dehrust_stk|            209|         12,320|      2,684,358|
|lz4|lz4dec|             97|         14,298|        599,908|
|lz4|lz4dec_ram|            100|         14,298|        584,372|
|lz4|lz4dec_rom|            103|         14,298|        599,205|
|lz48|lz48decrunch_v006|             84|         14,250|        585,776|
|lz48|lz48decrunch_v006_|             70|         14,250|        581,226|
|lz48|lz48decrunch_v006__180|             74|         14,250|        575,253|
|lz49|lz49decrunch_v001|            106|         14,030|        658,644|
|lz49|lz49decrunch_v001_180|            112|         14,030|        657,704|
|lze|lzdec|            119|         13,187|      1,481,802|
|lze|lzdec_104|            104|         13,187|      1,372,662|
|lzee|lzee_dec_area|             88|         13,183|      1,809,889|
|lzee|lzee_dec|             99|         13,183|      1,348,762|
|lzee|lzee_dec_speed|            102|         13,183|      1,346,324|
|lzsa1|unlzsa1_fast_v1|            110|         13,703|        622,687|
|lzsa1|unlzsa1_small_v1|             69|         13,703|        666,634|
|lzsa2|unlzsa2_fast_v1|            218|         12,888|      1,037,573|
|lzsa2|unlzsa2_small_v1|            145|         12,888|      1,144,774|
|lzsa2|unlzsa2_fast_v1_180|            216|         12,888|      1,054,061|
|lzsa2|unlzsa2_small_v1_180|            145|         12,888|      1,181,872|
|MegaLZ|megalz_dec40|            110|         12,660|      2,979,373|
|Pletter|unpletter|            170|         12,700|      1,873,970|
|Pletter|unpletter_180|            169|         12,700|      1,873,978|
|Shrinkler|shrinkler_recall_209|            209|         11,916|    198,247,021|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         11,916|    198,247,021|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         11,916|    202,175,137|
|zx7b|dzx7b_fast|            191|         12,810|      1,341,173|
|zx7b|dzx7b_fast_r800|            193|         12,810|      1,357,098|
|zx7b|dzx7b_slow|             64|         12,810|      2,211,732|
|zx7b|dzx7b_slow_r800|             65|         12,810|      2,227,657|



test data:MSX2MAIN.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,740|      7,678,676|
|Exomizer2|deexo_180|            167|         12,740|      7,679,778|
|Exomizer2|deexo_180_fast|            172|         12,740|      6,695,658|
|Exomizer2|deexo_180_fast_jp|            183|         12,740|      6,640,796|
|Exomizer3|deexo3p7|            180|         12,739|      6,587,327|
|Exomizer3|deexo3p7_fast|            187|         12,739|      5,698,845|
|Exomizer3|deexo3p7_fast_jp|            189|         12,739|      5,689,325|
|Exomizer3|deexo3|            214|         12,739|      5,992,517|
|hrust|dehrust_ix|            234|         12,790|      3,081,329|
|hrust|dehrust_stk|            209|         12,790|      2,753,298|
|lz4|lz4dec|             97|         14,847|        609,147|
|lz4|lz4dec_ram|            100|         14,847|        592,739|
|lz4|lz4dec_rom|            103|         14,847|        608,408|
|lz48|lz48decrunch_v006|             84|         14,268|        619,366|
|lz48|lz48decrunch_v006_|             70|         14,268|        613,020|
|lz48|lz48decrunch_v006__180|             74|         14,268|        606,546|
|lz49|lz49decrunch_v001|            106|         14,196|        680,983|
|lz49|lz49decrunch_v001_180|            112|         14,196|        679,175|
|lze|lzdec|            119|         13,698|      1,533,796|
|lze|lzdec_104|            104|         13,698|      1,416,718|
|lzee|lzee_dec_area|             88|         13,694|      1,897,881|
|lzee|lzee_dec|             99|         13,694|      1,398,093|
|lzee|lzee_dec_speed|            102|         13,694|      1,395,540|
|lzsa1|unlzsa1_fast_v1|            110|         14,087|        622,356|
|lzsa1|unlzsa1_small_v1|             69|         14,087|        666,300|
|lzsa2|unlzsa2_fast_v1|            218|         13,372|      1,036,825|
|lzsa2|unlzsa2_small_v1|            145|         13,372|      1,143,800|
|lzsa2|unlzsa2_fast_v1_180|            216|         13,372|      1,053,497|
|lzsa2|unlzsa2_small_v1_180|            145|         13,372|      1,181,312|
|MegaLZ|megalz_dec40|            110|         13,072|      3,077,702|
|Pletter|unpletter|            170|         13,205|      1,788,932|
|Pletter|unpletter_180|            169|         13,205|      1,788,940|
|Shrinkler|shrinkler_recall_209|            209|         12,276|    202,922,527|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         12,276|    202,922,527|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         12,276|    206,980,245|
|zx7b|dzx7b_fast|            191|         13,248|      1,312,892|
|zx7b|dzx7b_fast_r800|            193|         13,248|      1,328,717|
|zx7b|dzx7b_slow|             64|         13,248|      2,140,196|
|zx7b|dzx7b_slow_r800|             65|         13,248|      2,156,021|



test data:MSX2MAIN.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         13,402|      8,119,431|
|Exomizer2|deexo_180|            167|         13,402|      8,120,533|
|Exomizer2|deexo_180_fast|            172|         13,402|      7,044,376|
|Exomizer2|deexo_180_fast_jp|            183|         13,402|      6,979,923|
|Exomizer3|deexo3p7|            180|         13,402|      6,399,017|
|Exomizer3|deexo3p7_fast|            187|         13,402|      5,533,325|
|Exomizer3|deexo3p7_fast_jp|            189|         13,402|      5,524,193|
|Exomizer3|deexo3|            214|         13,402|      5,832,456|
|hrust|dehrust_ix|            234|         13,485|      3,142,810|
|hrust|dehrust_stk|            209|         13,485|      2,808,962|
|lz4|lz4dec|             97|         15,454|        588,184|
|lz4|lz4dec_ram|            100|         15,454|        573,448|
|lz4|lz4dec_rom|            103|         15,454|        587,291|
|lz48|lz48decrunch_v006|             84|         15,305|        566,961|
|lz48|lz48decrunch_v006_|             70|         15,305|        563,268|
|lz48|lz48decrunch_v006__180|             74|         15,305|        557,634|
|lz49|lz49decrunch_v001|            106|         15,254|        636,775|
|lz49|lz49decrunch_v001_180|            112|         15,254|        636,255|
|lze|lzdec|            119|         14,389|      1,560,048|
|lze|lzdec_104|            104|         14,389|      1,446,466|
|lzee|lzee_dec_area|             88|         14,385|      1,916,137|
|lzee|lzee_dec|             99|         14,385|      1,420,691|
|lzee|lzee_dec_speed|            102|         14,385|      1,418,151|
|lzsa1|unlzsa1_fast_v1|            110|         14,892|        619,201|
|lzsa1|unlzsa1_small_v1|             69|         14,892|        662,108|
|lzsa2|unlzsa2_fast_v1|            218|         14,123|      1,072,072|
|lzsa2|unlzsa2_small_v1|            145|         14,123|      1,186,770|
|lzsa2|unlzsa2_fast_v1_180|            216|         14,123|      1,089,024|
|lzsa2|unlzsa2_small_v1_180|            145|         14,123|      1,224,912|
|MegaLZ|megalz_dec40|            110|         13,917|      3,129,990|
|Pletter|unpletter|            170|         13,909|      1,997,407|
|Pletter|unpletter_180|            169|         13,909|      1,997,415|
|Shrinkler|shrinkler_recall_209|            209|         13,100|    219,699,688|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         13,100|    219,699,688|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         13,100|    224,017,138|
|zx7b|dzx7b_fast|            191|         14,002|      1,411,404|
|zx7b|dzx7b_fast_r800|            193|         14,002|      1,428,649|
|zx7b|dzx7b_slow|             64|         14,002|      2,355,118|
|zx7b|dzx7b_slow_r800|             65|         14,002|      2,372,363|



test data:MSXMUSIC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,068|      5,986,114|
|Exomizer2|deexo_180|            167|         10,068|      5,987,216|
|Exomizer2|deexo_180_fast|            172|         10,068|      5,218,034|
|Exomizer2|deexo_180_fast_jp|            183|         10,068|      5,174,135|
|Exomizer3|deexo3p7|            180|         10,068|      5,080,859|
|Exomizer3|deexo3p7_fast|            187|         10,068|      4,401,212|
|Exomizer3|deexo3p7_fast_jp|            189|         10,068|      4,394,074|
|Exomizer3|deexo3|            214|         10,068|      4,624,409|
|hrust|dehrust_ix|            234|         10,118|      2,529,789|
|hrust|dehrust_stk|            209|         10,118|      2,274,112|
|lz4|lz4dec|             97|         11,634|        608,085|
|lz4|lz4dec_ram|            100|         11,634|        591,461|
|lz4|lz4dec_rom|            103|         11,634|        607,284|
|lz48|lz48decrunch_v006|             84|         12,121|        597,381|
|lz48|lz48decrunch_v006_|             70|         12,121|        593,944|
|lz48|lz48decrunch_v006__180|             74|         12,121|        587,545|
|lz49|lz49decrunch_v001|            106|         11,980|        648,929|
|lz49|lz49decrunch_v001_180|            112|         11,980|        648,073|
|lze|lzdec|            119|         10,830|      1,270,114|
|lze|lzdec_104|            104|         10,830|      1,183,499|
|lzee|lzee_dec_area|             88|         10,826|      1,543,591|
|lzee|lzee_dec|             99|         10,826|      1,165,924|
|lzee|lzee_dec_speed|            102|         10,826|      1,164,007|
|lzsa1|unlzsa1_fast_v1|            110|         11,049|        595,407|
|lzsa1|unlzsa1_small_v1|             69|         11,049|        633,756|
|lzsa2|unlzsa2_fast_v1|            218|         10,420|        911,809|
|lzsa2|unlzsa2_small_v1|            145|         10,420|      1,003,795|
|lzsa2|unlzsa2_fast_v1_180|            216|         10,420|        924,937|
|lzsa2|unlzsa2_small_v1_180|            145|         10,420|      1,033,333|
|MegaLZ|megalz_dec40|            110|         10,407|      2,560,679|
|Pletter|unpletter|            170|         10,466|      1,474,879|
|Pletter|unpletter_180|            169|         10,466|      1,474,887|
|Shrinkler|shrinkler_recall_209|            209|          9,536|    157,373,448|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,536|    157,373,448|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,536|    160,533,280|
|zx7b|dzx7b_fast|            191|         10,495|      1,103,981|
|zx7b|dzx7b_fast_r800|            193|         10,495|      1,115,571|
|zx7b|dzx7b_slow|             64|         10,495|      1,753,820|
|zx7b|dzx7b_slow_r800|             65|         10,495|      1,765,410|



test data:MSX2EXT.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,351|      8,066,566|
|Exomizer2|deexo_180|            167|         12,351|      8,067,668|
|Exomizer2|deexo_180_fast|            172|         12,351|      7,021,257|
|Exomizer2|deexo_180_fast_jp|            183|         12,351|      6,961,864|
|Exomizer3|deexo3p7|            180|         12,351|      6,763,935|
|Exomizer3|deexo3p7_fast|            187|         12,351|      5,851,817|
|Exomizer3|deexo3p7_fast_jp|            189|         12,351|      5,842,065|
|Exomizer3|deexo3|            214|         12,351|      6,151,910|
|hrust|dehrust_ix|            234|         12,370|      3,112,516|
|hrust|dehrust_stk|            209|         12,370|      2,798,981|
|lz4|lz4dec|             97|         14,583|        624,663|
|lz4|lz4dec_ram|            100|         14,583|        607,135|
|lz4|lz4dec_rom|            103|         14,583|        623,750|
|lz48|lz48decrunch_v006|             84|         14,074|        638,203|
|lz48|lz48decrunch_v006_|             70|         14,074|        633,823|
|lz48|lz48decrunch_v006__180|             74|         14,074|        626,334|
|lz49|lz49decrunch_v001|            106|         13,969|        708,915|
|lz49|lz49decrunch_v001_180|            112|         13,969|        707,716|
|lze|lzdec|            119|         13,303|      1,505,104|
|lze|lzdec_104|            104|         13,303|      1,391,024|
|lzee|lzee_dec_area|             88|         13,299|      1,847,207|
|lzee|lzee_dec|             99|         13,299|      1,369,549|
|lzee|lzee_dec_speed|            102|         13,299|      1,367,029|
|lzsa1|unlzsa1_fast_v1|            110|         13,720|        656,553|
|lzsa1|unlzsa1_small_v1|             69|         13,720|        705,897|
|lzsa2|unlzsa2_fast_v1|            218|         12,882|      1,053,837|
|lzsa2|unlzsa2_small_v1|            145|         12,882|      1,162,473|
|lzsa2|unlzsa2_fast_v1_180|            216|         12,882|      1,070,925|
|lzsa2|unlzsa2_small_v1_180|            145|         12,882|      1,200,921|
|MegaLZ|megalz_dec40|            110|         12,833|      3,030,834|
|Pletter|unpletter|            170|         12,858|      2,027,765|
|Pletter|unpletter_180|            169|         12,858|      2,027,773|
|Shrinkler|shrinkler_recall_209|            209|         11,820|    196,044,987|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         11,820|    196,044,987|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         11,820|    199,947,902|
|zx7b|dzx7b_fast|            191|         12,964|      1,328,878|
|zx7b|dzx7b_fast_r800|            193|         12,964|      1,344,828|
|zx7b|dzx7b_slow|             64|         12,964|      2,165,985|
|zx7b|dzx7b_slow_r800|             65|         12,964|      2,181,935|



test data:KANJJ1.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          6,097|      5,111,648|
|Exomizer2|deexo_180|            167|          6,097|      5,112,750|
|Exomizer2|deexo_180_fast|            172|          6,097|      4,465,787|
|Exomizer2|deexo_180_fast_jp|            183|          6,097|      4,432,573|
|Exomizer3|deexo3p7|            180|          6,097|      4,199,635|
|Exomizer3|deexo3p7_fast|            187|          6,097|      3,649,713|
|Exomizer3|deexo3p7_fast_jp|            189|          6,097|      3,644,001|
|Exomizer3|deexo3|            214|          6,097|      3,841,825|
|hrust|dehrust_ix|            234|          6,454|      2,490,929|
|hrust|dehrust_stk|            209|          6,454|      2,300,068|
|lz4|lz4dec|             97|          8,140|        793,238|
|lz4|lz4dec_ram|            100|          8,140|        763,678|
|lz4|lz4dec_rom|            103|          8,140|        794,307|
|lz48|lz48decrunch_v006|             84|          8,167|        753,001|
|lz48|lz48decrunch_v006_|             70|          8,167|        735,565|
|lz48|lz48decrunch_v006__180|             74|          8,167|        727,779|
|lz49|lz49decrunch_v001|            106|          7,824|        820,492|
|lz49|lz49decrunch_v001_180|            112|          7,824|        814,841|
|lze|lzdec|            119|          7,027|      1,145,514|
|lze|lzdec_104|            104|          7,027|      1,048,779|
|lzee|lzee_dec_area|             88|          7,023|      1,256,449|
|lzee|lzee_dec|             99|          7,023|      1,010,079|
|lzee|lzee_dec_speed|            102|          7,023|      1,007,713|
|lzsa1|unlzsa1_fast_v1|            110|          7,317|        729,901|
|lzsa1|unlzsa1_small_v1|             69|          7,317|        795,547|
|lzsa2|unlzsa2_fast_v1|            218|          6,523|      1,030,982|
|lzsa2|unlzsa2_small_v1|            145|          6,523|      1,132,250|
|lzsa2|unlzsa2_fast_v1_180|            216|          6,523|      1,047,798|
|lzsa2|unlzsa2_small_v1_180|            145|          6,523|      1,170,086|
|MegaLZ|megalz_dec40|            110|          6,514|      2,432,743|
|Pletter|unpletter|            170|          6,511|      1,461,388|
|Pletter|unpletter_180|            169|          6,511|      1,461,396|
|Shrinkler|shrinkler_recall_209|            209|          5,728|    102,142,021|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          5,728|    102,142,021|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          5,728|    104,134,819|
|zx7b|dzx7b_fast|            191|          6,591|      1,161,342|
|zx7b|dzx7b_fast_r800|            193|          6,591|      1,173,877|
|zx7b|dzx7b_slow|             64|          6,591|      1,765,077|
|zx7b|dzx7b_slow_r800|             65|          6,591|      1,777,612|



test data:KANJJ1.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          3,975|      3,493,148|
|Exomizer2|deexo_180|            167|          3,975|      3,494,250|
|Exomizer2|deexo_180_fast|            172|          3,975|      3,068,076|
|Exomizer2|deexo_180_fast_jp|            183|          3,975|      3,046,685|
|Exomizer3|deexo3p7|            180|          3,974|      2,858,580|
|Exomizer3|deexo3p7_fast|            187|          3,974|      2,499,549|
|Exomizer3|deexo3p7_fast_jp|            189|          3,974|      2,495,917|
|Exomizer3|deexo3|            214|          3,974|      2,621,192|
|hrust|dehrust_ix|            234|          4,241|      1,826,309|
|hrust|dehrust_stk|            209|          4,241|      1,698,453|
|lz4|lz4dec|             97|          5,472|        681,619|
|lz4|lz4dec_ram|            100|          5,472|        659,883|
|lz4|lz4dec_rom|            103|          5,472|        682,306|
|lz48|lz48decrunch_v006|             84|          5,532|        669,209|
|lz48|lz48decrunch_v006_|             70|          5,532|        654,070|
|lz48|lz48decrunch_v006__180|             74|          5,532|        648,433|
|lz49|lz49decrunch_v001|            106|          5,240|        714,209|
|lz49|lz49decrunch_v001_180|            112|          5,240|        709,503|
|lze|lzdec|            119|          4,664|        907,166|
|lze|lzdec_104|            104|          4,664|        838,447|
|lzee|lzee_dec_area|             88|          4,660|        976,705|
|lzee|lzee_dec|             99|          4,660|        810,672|
|lzee|lzee_dec_speed|            102|          4,660|        808,991|
|lzsa1|unlzsa1_fast_v1|            110|          4,805|        632,155|
|lzsa1|unlzsa1_small_v1|             69|          4,805|        679,002|
|lzsa2|unlzsa2_fast_v1|            218|          4,297|        835,381|
|lzsa2|unlzsa2_small_v1|            145|          4,297|        905,810|
|lzsa2|unlzsa2_fast_v1_180|            216|          4,297|        847,205|
|lzsa2|unlzsa2_small_v1_180|            145|          4,297|        932,414|
|MegaLZ|megalz_dec40|            110|          4,320|      1,795,413|
|Pletter|unpletter|            170|          4,269|      1,106,926|
|Pletter|unpletter_180|            169|          4,269|      1,106,934|
|Shrinkler|shrinkler_recall_209|            209|          3,700|     65,685,212|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          3,700|     65,685,212|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          3,700|     66,958,071|
|zx7b|dzx7b_fast|            191|          4,424|        930,945|
|zx7b|dzx7b_fast_r800|            193|          4,424|        939,750|
|zx7b|dzx7b_slow|             64|          4,424|      1,349,287|
|zx7b|dzx7b_slow_r800|             65|          4,424|      1,358,092|



test data:KANJJ1.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,688|      7,768,783|
|Exomizer2|deexo_180|            167|         10,688|      7,769,885|
|Exomizer2|deexo_180_fast|            172|         10,688|      6,730,942|
|Exomizer2|deexo_180_fast_jp|            183|         10,688|      6,671,141|
|Exomizer3|deexo3p7|            180|         10,688|      5,861,911|
|Exomizer3|deexo3p7_fast|            187|         10,688|      5,093,898|
|Exomizer3|deexo3p7_fast_jp|            189|         10,688|      5,085,476|
|Exomizer3|deexo3|            214|         10,688|      5,356,616|
|hrust|dehrust_ix|            234|         10,960|      3,286,239|
|hrust|dehrust_stk|            209|         10,960|      2,990,229|
|lz4|lz4dec|             97|         13,019|        802,910|
|lz4|lz4dec_ram|            100|         13,019|        771,878|
|lz4|lz4dec_rom|            103|         13,019|        802,397|
|lz48|lz48decrunch_v006|             84|         14,290|        662,376|
|lz48|lz48decrunch_v006_|             70|         14,290|        656,629|
|lz48|lz48decrunch_v006__180|             74|         14,290|        648,620|
|lz49|lz49decrunch_v001|            106|         13,985|        783,598|
|lz49|lz49decrunch_v001_180|            112|         13,985|        781,440|
|lze|lzdec|            119|         11,696|      1,503,720|
|lze|lzdec_104|            104|         11,696|      1,377,399|
|lzee|lzee_dec_area|             88|         11,692|      1,719,598|
|lzee|lzee_dec|             99|         11,692|      1,326,874|
|lzee|lzee_dec_speed|            102|         11,692|      1,323,812|
|lzsa1|unlzsa1_fast_v1|            110|         12,545|        775,013|
|lzsa1|unlzsa1_small_v1|             69|         12,545|        847,132|
|lzsa2|unlzsa2_fast_v1|            218|         11,428|      1,241,678|
|lzsa2|unlzsa2_small_v1|            145|         11,428|      1,373,143|
|lzsa2|unlzsa2_fast_v1_180|            216|         11,428|      1,263,222|
|lzsa2|unlzsa2_small_v1_180|            145|         11,428|      1,421,617|
|MegaLZ|megalz_dec40|            110|         11,362|      3,337,759|
|Pletter|unpletter|            170|         11,340|      2,176,730|
|Pletter|unpletter_180|            169|         11,340|      2,176,738|
|Shrinkler|shrinkler_recall_209|            209|         10,212|    184,251,287|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,212|    184,251,287|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,212|    187,790,113|
|zx7b|dzx7b_fast|            191|         11,629|      1,530,270|
|zx7b|dzx7b_fast_r800|            193|         11,629|      1,549,850|
|zx7b|dzx7b_slow|             64|         11,629|      2,506,048|
|zx7b|dzx7b_slow_r800|             65|         11,629|      2,525,628|



test data:KANJJ1.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,510|      7,603,571|
|Exomizer2|deexo_180|            167|         10,510|      7,604,673|
|Exomizer2|deexo_180_fast|            172|         10,510|      6,584,135|
|Exomizer2|deexo_180_fast_jp|            183|         10,510|      6,524,875|
|Exomizer3|deexo3p7|            180|         10,509|      5,773,518|
|Exomizer3|deexo3p7_fast|            187|         10,509|      5,006,661|
|Exomizer3|deexo3p7_fast_jp|            189|         10,509|      4,998,497|
|Exomizer3|deexo3|            214|         10,509|      5,265,919|
|hrust|dehrust_ix|            234|         10,765|      3,242,574|
|hrust|dehrust_stk|            209|         10,765|      2,950,438|
|lz4|lz4dec|             97|         12,751|        799,080|
|lz4|lz4dec_ram|            100|         12,751|        768,520|
|lz4|lz4dec_rom|            103|         12,751|        798,951|
|lz48|lz48decrunch_v006|             84|         14,024|        676,681|
|lz48|lz48decrunch_v006_|             70|         14,024|        668,286|
|lz48|lz48decrunch_v006__180|             74|         14,024|        660,487|
|lz49|lz49decrunch_v001|            106|         13,761|        786,435|
|lz49|lz49decrunch_v001_180|            112|         13,761|        783,668|
|lze|lzdec|            119|         11,493|      1,480,718|
|lze|lzdec_104|            104|         11,493|      1,357,652|
|lzee|lzee_dec_area|             88|         11,489|      1,688,902|
|lzee|lzee_dec|             99|         11,489|      1,307,102|
|lzee|lzee_dec_speed|            102|         11,489|      1,304,107|
|lzsa1|unlzsa1_fast_v1|            110|         12,253|        782,128|
|lzsa1|unlzsa1_small_v1|             69|         12,253|        856,196|
|lzsa2|unlzsa2_fast_v1|            218|         11,165|      1,209,759|
|lzsa2|unlzsa2_small_v1|            145|         11,165|      1,334,984|
|lzsa2|unlzsa2_fast_v1_180|            216|         11,165|      1,230,567|
|lzsa2|unlzsa2_small_v1_180|            145|         11,165|      1,381,802|
|MegaLZ|megalz_dec40|            110|         11,161|      3,294,363|
|Pletter|unpletter|            170|         11,105|      2,137,378|
|Pletter|unpletter_180|            169|         11,105|      2,137,386|
|Shrinkler|shrinkler_recall_209|            209|         10,020|    181,710,794|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,020|    181,710,794|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,020|    185,186,436|
|zx7b|dzx7b_fast|            191|         11,451|      1,505,939|
|zx7b|dzx7b_fast_r800|            193|         11,451|      1,524,884|
|zx7b|dzx7b_slow|             64|         11,451|      2,465,218|
|zx7b|dzx7b_slow_r800|             65|         11,451|      2,484,163|



test data:KANJJ1.B04(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,415|      7,416,607|
|Exomizer2|deexo_180|            167|         10,415|      7,417,709|
|Exomizer2|deexo_180_fast|            172|         10,415|      6,427,852|
|Exomizer2|deexo_180_fast_jp|            183|         10,415|      6,371,366|
|Exomizer3|deexo3p7|            180|         10,415|      5,681,940|
|Exomizer3|deexo3p7_fast|            187|         10,415|      4,931,321|
|Exomizer3|deexo3p7_fast_jp|            189|         10,415|      4,923,243|
|Exomizer3|deexo3|            214|         10,415|      5,186,154|
|hrust|dehrust_ix|            234|         10,708|      3,254,294|
|hrust|dehrust_stk|            209|         10,708|      2,963,646|
|lz4|lz4dec|             97|         12,688|        816,617|
|lz4|lz4dec_ram|            100|         12,688|        784,737|
|lz4|lz4dec_rom|            103|         12,688|        816,532|
|lz48|lz48decrunch_v006|             84|         13,960|        681,024|
|lz48|lz48decrunch_v006_|             70|         13,960|        673,078|
|lz48|lz48decrunch_v006__180|             74|         13,960|        665,075|
|lz49|lz49decrunch_v001|            106|         13,717|        784,719|
|lz49|lz49decrunch_v001_180|            112|         13,717|        782,015|
|lze|lzdec|            119|         11,373|      1,480,839|
|lze|lzdec_104|            104|         11,373|      1,356,257|
|lzee|lzee_dec_area|             88|         11,369|      1,687,826|
|lzee|lzee_dec|             99|         11,369|      1,305,907|
|lzee|lzee_dec_speed|            102|         11,369|      1,302,881|
|lzsa1|unlzsa1_fast_v1|            110|         12,190|        784,335|
|lzsa1|unlzsa1_small_v1|             69|         12,190|        858,831|
|lzsa2|unlzsa2_fast_v1|            218|         11,070|      1,222,141|
|lzsa2|unlzsa2_small_v1|            145|         11,070|      1,351,058|
|lzsa2|unlzsa2_fast_v1_180|            216|         11,070|      1,243,149|
|lzsa2|unlzsa2_small_v1_180|            145|         11,070|      1,398,326|
|MegaLZ|megalz_dec40|            110|         11,016|      3,271,673|
|Pletter|unpletter|            170|         10,992|      2,130,343|
|Pletter|unpletter_180|            169|         10,992|      2,130,351|
|Shrinkler|shrinkler_recall_209|            209|          9,876|    179,896,027|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,876|    179,896,027|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,876|    183,336,722|
|zx7b|dzx7b_fast|            191|         11,327|      1,521,877|
|zx7b|dzx7b_fast_r800|            193|         11,327|      1,541,167|
|zx7b|dzx7b_slow|             64|         11,327|      2,488,567|
|zx7b|dzx7b_slow_r800|             65|         11,327|      2,507,857|



test data:KANJJ1.B05(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,348|      7,475,213|
|Exomizer2|deexo_180|            167|         10,348|      7,476,315|
|Exomizer2|deexo_180_fast|            172|         10,348|      6,473,430|
|Exomizer2|deexo_180_fast_jp|            183|         10,348|      6,415,361|
|Exomizer3|deexo3p7|            180|         10,347|      5,706,129|
|Exomizer3|deexo3p7_fast|            187|         10,347|      4,947,473|
|Exomizer3|deexo3p7_fast_jp|            189|         10,347|      4,939,429|
|Exomizer3|deexo3|            214|         10,347|      5,200,353|
|hrust|dehrust_ix|            234|         10,610|      3,218,897|
|hrust|dehrust_stk|            209|         10,610|      2,929,495|
|lz4|lz4dec|             97|         12,552|        806,935|
|lz4|lz4dec_ram|            100|         12,552|        775,751|
|lz4|lz4dec_rom|            103|         12,552|        806,732|
|lz48|lz48decrunch_v006|             84|         13,952|        675,287|
|lz48|lz48decrunch_v006_|             70|         13,952|        667,919|
|lz48|lz48decrunch_v006__180|             74|         13,952|        659,949|
|lz49|lz49decrunch_v001|            106|         13,674|        789,919|
|lz49|lz49decrunch_v001_180|            112|         13,674|        787,271|
|lze|lzdec|            119|         11,283|      1,468,273|
|lze|lzdec_104|            104|         11,283|      1,345,731|
|lzee|lzee_dec_area|             88|         11,279|      1,670,829|
|lzee|lzee_dec|             99|         11,279|      1,295,256|
|lzee|lzee_dec_speed|            102|         11,279|      1,292,271|
|lzsa1|unlzsa1_fast_v1|            110|         12,075|        788,708|
|lzsa1|unlzsa1_small_v1|             69|         12,075|        863,970|
|lzsa2|unlzsa2_fast_v1|            218|         10,960|      1,216,517|
|lzsa2|unlzsa2_small_v1|            145|         10,960|      1,344,561|
|lzsa2|unlzsa2_fast_v1_180|            216|         10,960|      1,237,445|
|lzsa2|unlzsa2_small_v1_180|            145|         10,960|      1,391,649|
|MegaLZ|megalz_dec40|            110|         11,012|      3,284,220|
|Pletter|unpletter|            170|         10,908|      2,106,071|
|Pletter|unpletter_180|            169|         10,908|      2,106,079|
|Shrinkler|shrinkler_recall_209|            209|          9,808|    178,129,932|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,808|    178,129,932|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,808|    181,532,215|
|zx7b|dzx7b_fast|            191|         11,341|      1,500,846|
|zx7b|dzx7b_fast_r800|            193|         11,341|      1,519,786|
|zx7b|dzx7b_slow|             64|         11,341|      2,450,589|
|zx7b|dzx7b_slow_r800|             65|         11,341|      2,469,529|



test data:KANJJ1.B06(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,650|      7,752,805|
|Exomizer2|deexo_180|            167|         10,650|      7,753,907|
|Exomizer2|deexo_180_fast|            172|         10,650|      6,711,312|
|Exomizer2|deexo_180_fast_jp|            183|         10,650|      6,650,845|
|Exomizer3|deexo3p7|            180|         10,650|      5,920,839|
|Exomizer3|deexo3p7_fast|            187|         10,650|      5,127,629|
|Exomizer3|deexo3p7_fast_jp|            189|         10,650|      5,119,323|
|Exomizer3|deexo3|            214|         10,650|      5,388,618|
|hrust|dehrust_ix|            234|         10,934|      3,297,965|
|hrust|dehrust_stk|            209|         10,934|      3,001,103|
|lz4|lz4dec|             97|         12,993|        811,542|
|lz4|lz4dec_ram|            100|         12,993|        779,662|
|lz4|lz4dec_rom|            103|         12,993|        810,885|
|lz48|lz48decrunch_v006|             84|         14,179|        662,958|
|lz48|lz48decrunch_v006_|             70|         14,179|        656,277|
|lz48|lz48decrunch_v006__180|             74|         14,179|        648,507|
|lz49|lz49decrunch_v001|            106|         13,920|        774,080|
|lz49|lz49decrunch_v001_180|            112|         13,920|        771,593|
|lze|lzdec|            119|         11,634|      1,504,858|
|lze|lzdec_104|            104|         11,634|      1,377,964|
|lzee|lzee_dec_area|             88|         11,630|      1,713,147|
|lzee|lzee_dec|             99|         11,630|      1,325,489|
|lzee|lzee_dec_speed|            102|         11,630|      1,322,396|
|lzsa1|unlzsa1_fast_v1|            110|         12,508|        794,707|
|lzsa1|unlzsa1_small_v1|             69|         12,508|        870,637|
|lzsa2|unlzsa2_fast_v1|            218|         11,386|      1,242,358|
|lzsa2|unlzsa2_small_v1|            145|         11,386|      1,373,675|
|lzsa2|unlzsa2_fast_v1_180|            216|         11,386|      1,263,878|
|lzsa2|unlzsa2_small_v1_180|            145|         11,386|      1,422,095|
|MegaLZ|megalz_dec40|            110|         11,281|      3,337,059|
|Pletter|unpletter|            170|         11,252|      2,178,723|
|Pletter|unpletter_180|            169|         11,252|      2,178,731|
|Shrinkler|shrinkler_recall_209|            209|         10,148|    184,730,043|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,148|    184,730,043|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,148|    188,255,537|
|zx7b|dzx7b_fast|            191|         11,601|      1,529,557|
|zx7b|dzx7b_fast_r800|            193|         11,601|      1,549,062|
|zx7b|dzx7b_slow|             64|         11,601|      2,506,261|
|zx7b|dzx7b_slow_r800|             65|         11,601|      2,525,766|



test data:KANJJ1.B07(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          9,701|      7,135,248|
|Exomizer2|deexo_180|            167|          9,701|      7,136,350|
|Exomizer2|deexo_180_fast|            172|          9,701|      6,186,070|
|Exomizer2|deexo_180_fast_jp|            183|          9,701|      6,131,043|
|Exomizer3|deexo3p7|            180|          9,701|      5,395,480|
|Exomizer3|deexo3p7_fast|            187|          9,701|      4,691,527|
|Exomizer3|deexo3p7_fast_jp|            189|          9,701|      4,683,843|
|Exomizer3|deexo3|            214|          9,701|      4,932,012|
|hrust|dehrust_ix|            234|          9,953|      3,024,595|
|hrust|dehrust_stk|            209|          9,953|      2,757,158|
|lz4|lz4dec|             97|         11,840|        757,096|
|lz4|lz4dec_ram|            100|         11,840|        729,456|
|lz4|lz4dec_rom|            103|         11,840|        756,653|
|lz48|lz48decrunch_v006|             84|         13,048|        641,904|
|lz48|lz48decrunch_v006_|             70|         13,048|        634,564|
|lz48|lz48decrunch_v006__180|             74|         13,048|        627,574|
|lz49|lz49decrunch_v001|            106|         12,778|        736,853|
|lz49|lz49decrunch_v001_180|            112|         12,778|        734,646|
|lze|lzdec|            119|         10,578|      1,393,220|
|lze|lzdec_104|            104|         10,578|      1,279,686|
|lzee|lzee_dec_area|             88|         10,574|      1,586,959|
|lzee|lzee_dec|             99|         10,574|      1,233,861|
|lzee|lzee_dec_speed|            102|         10,574|      1,231,106|
|lzsa1|unlzsa1_fast_v1|            110|         11,389|        751,970|
|lzsa1|unlzsa1_small_v1|             69|         11,389|        820,014|
|lzsa2|unlzsa2_fast_v1|            218|         10,373|      1,151,381|
|lzsa2|unlzsa2_small_v1|            145|         10,373|      1,271,223|
|lzsa2|unlzsa2_fast_v1_180|            216|         10,373|      1,170,549|
|lzsa2|unlzsa2_small_v1_180|            145|         10,373|      1,314,351|
|MegaLZ|megalz_dec40|            110|         10,247|      3,070,083|
|Pletter|unpletter|            170|         10,245|      1,996,630|
|Pletter|unpletter_180|            169|         10,245|      1,996,638|
|Shrinkler|shrinkler_recall_209|            209|          9,212|    166,951,906|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,212|    166,951,906|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,212|    170,158,873|
|zx7b|dzx7b_fast|            191|         10,586|      1,431,824|
|zx7b|dzx7b_fast_r800|            193|         10,586|      1,449,679|
|zx7b|dzx7b_slow|             64|         10,586|      2,328,107|
|zx7b|dzx7b_slow_r800|             65|         10,586|      2,345,962|

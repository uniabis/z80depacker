
# Depackers for Z80

## Packers

### [Exomizer2](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P0)

License:LGPL

### [Exomizer3](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P7)

License:LGPL

[deexoopt](https://github.com/antoniovillena/deexo)

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

## Compressed size



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
|Exomizer2|deexo_180_fast_jp|            178|        160,011|     93,040,303|
|Exomizer3|deexo3p7|            176|        160,007|     82,034,254|
|Exomizer3|deexo3p7_fast|            179|        160,007|     70,447,066|
|Exomizer3|deexo3p7_fast_jp|            181|        160,007|     70,324,722|
|Exomizer3|deexo3|            197|        160,007|     73,567,920|
|Exomizer3|deexoopt_p7|            219|        160,007|     63,745,458|
|Exomizer3|deexoopt_f3_p7|            208|        160,007|     61,871,602|
|Exomizer3|deexoopt_f3_180_p7|            217|        160,007|     64,992,834|
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
|lzsa1|unlzsa1_fast_v1|            109|        182,308|     10,483,654|
|lzsa1|unlzsa1_small_v1|             68|        182,308|     11,361,118|
|lzsa2|unlzsa2_fast_v1|            214|        168,961|     16,218,030|
|lzsa2|unlzsa2_fast_v1_180|            212|        168,961|     16,489,758|
|lzsa2|unlzsa2_small_v1|            140|        168,961|     18,243,285|
|lzsa2|unlzsa2_small_v1_180|            138|        168,961|     18,515,013|
|MegaLZ|megalz_dec40|            110|        167,609|     45,653,296|
|Pletter|unpletter|            170|        167,494|     28,812,190|
|Pletter|unpletter_180|            169|        167,494|     28,812,318|
|Shrinkler|shrinkler_recall_209|            209|        153,164|  2,648,153,963|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|        153,164|  2,648,153,963|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|        153,164|  2,699,900,331|
|zx7b|dzx7b_fast|            191|        170,425|     20,907,617|
|zx7b|dzx7b_fast_r800|            191|        170,425|     20,907,617|
|zx7b|dzx7b_slow|             64|        170,425|     33,688,687|
|zx7b|dzx7b_slow_r800|             64|        170,425|     33,688,687|



test data:MEGASDHC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          9,373|      5,908,411|
|Exomizer2|deexo_180|            167|          9,373|      5,909,513|
|Exomizer2|deexo_180_fast|            172|          9,373|      5,147,818|
|Exomizer2|deexo_180_fast_jp|            178|          9,373|      5,083,758|
|Exomizer3|deexo3p7|            176|          9,373|      4,644,675|
|Exomizer3|deexo3p7_fast|            179|          9,373|      3,991,419|
|Exomizer3|deexo3p7_fast_jp|            181|          9,373|      3,984,529|
|Exomizer3|deexo3|            197|          9,373|      4,161,356|
|Exomizer3|deexoopt_p7|            219|          9,373|      3,567,353|
|Exomizer3|deexoopt_f3_p7|            208|          9,373|      3,463,911|
|Exomizer3|deexoopt_f3_180_p7|            217|          9,373|      3,639,710|
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
|lzsa1|unlzsa1_fast_v1|            109|         10,339|        558,847|
|lzsa1|unlzsa1_small_v1|             68|         10,339|        594,102|
|lzsa2|unlzsa2_fast_v1|            214|          9,741|        855,596|
|lzsa2|unlzsa2_fast_v1_180|            212|          9,741|        868,092|
|lzsa2|unlzsa2_small_v1|            140|          9,741|        952,971|
|lzsa2|unlzsa2_small_v1_180|            138|          9,741|        965,467|
|MegaLZ|megalz_dec40|            110|          9,718|      2,363,816|
|Pletter|unpletter|            170|          9,706|      1,459,575|
|Pletter|unpletter_180|            169|          9,706|      1,459,583|
|Shrinkler|shrinkler_recall_209|            209|          8,984|    147,898,055|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          8,984|    147,898,055|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          8,984|    150,852,880|
|zx7b|dzx7b_fast|            191|          9,762|      1,088,297|
|zx7b|dzx7b_fast_r800|            191|          9,762|      1,088,297|
|zx7b|dzx7b_slow|             64|          9,762|      1,718,914|
|zx7b|dzx7b_slow_r800|             64|          9,762|      1,718,914|



test data:MEGASDHC.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          4,902|      3,307,149|
|Exomizer2|deexo_180|            167|          4,902|      3,308,251|
|Exomizer2|deexo_180_fast|            172|          4,902|      2,910,319|
|Exomizer2|deexo_180_fast_jp|            178|          4,902|      2,877,234|
|Exomizer3|deexo3p7|            176|          4,902|      2,759,609|
|Exomizer3|deexo3p7_fast|            179|          4,902|      2,386,716|
|Exomizer3|deexo3p7_fast_jp|            181|          4,902|      2,382,976|
|Exomizer3|deexo3|            197|          4,902|      2,483,633|
|Exomizer3|deexoopt_p7|            219|          4,902|      2,155,892|
|Exomizer3|deexoopt_f3_p7|            208|          4,902|      2,098,178|
|Exomizer3|deexoopt_f3_180_p7|            217|          4,902|      2,193,601|
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
|lzsa1|unlzsa1_fast_v1|            109|          5,392|        493,544|
|lzsa1|unlzsa1_small_v1|             68|          5,392|        516,093|
|lzsa2|unlzsa2_fast_v1|            214|          5,129|        638,096|
|lzsa2|unlzsa2_fast_v1_180|            212|          5,129|        645,088|
|lzsa2|unlzsa2_small_v1|            140|          5,129|        690,006|
|lzsa2|unlzsa2_small_v1_180|            138|          5,129|        696,998|
|MegaLZ|megalz_dec40|            110|          5,124|      1,578,986|
|Pletter|unpletter|            170|          5,083|        905,030|
|Pletter|unpletter_180|            169|          5,083|        905,038|
|Shrinkler|shrinkler_recall_209|            209|          4,680|     78,117,653|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          4,680|     78,117,653|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          4,680|     79,661,805|
|zx7b|dzx7b_fast|            191|          5,091|        769,861|
|zx7b|dzx7b_fast_r800|            191|          5,091|        769,861|
|zx7b|dzx7b_slow|             64|          5,091|      1,109,193|
|zx7b|dzx7b_slow_r800|             64|          5,091|      1,109,193|



test data:MEGASDHC.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,494|      7,962,111|
|Exomizer2|deexo_180|            167|         12,494|      7,963,213|
|Exomizer2|deexo_180_fast|            172|         12,494|      6,909,258|
|Exomizer2|deexo_180_fast_jp|            178|         12,494|      6,813,101|
|Exomizer3|deexo3p7|            176|         12,494|      6,005,290|
|Exomizer3|deexo3p7_fast|            179|         12,494|      5,131,915|
|Exomizer3|deexo3p7_fast_jp|            181|         12,494|      5,123,001|
|Exomizer3|deexo3|            197|         12,494|      5,368,287|
|Exomizer3|deexoopt_p7|            219|         12,494|      4,676,657|
|Exomizer3|deexoopt_f3_p7|            208|         12,494|      4,542,223|
|Exomizer3|deexoopt_f3_180_p7|            217|         12,494|      4,769,583|
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
|lzsa1|unlzsa1_fast_v1|            109|         14,044|        629,320|
|lzsa1|unlzsa1_small_v1|             68|         14,044|        678,077|
|lzsa2|unlzsa2_fast_v1|            214|         13,204|      1,060,095|
|lzsa2|unlzsa2_fast_v1_180|            212|         13,204|      1,078,391|
|lzsa2|unlzsa2_small_v1|            140|         13,204|      1,195,494|
|lzsa2|unlzsa2_small_v1_180|            138|         13,204|      1,213,790|
|MegaLZ|megalz_dec40|            110|         12,965|      3,108,603|
|Pletter|unpletter|            170|         12,945|      1,990,443|
|Pletter|unpletter_180|            169|         12,945|      1,990,451|
|Shrinkler|shrinkler_recall_209|            209|         12,148|    204,353,362|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         12,148|    204,353,362|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         12,148|    208,379,158|
|zx7b|dzx7b_fast|            191|         13,103|      1,438,531|
|zx7b|dzx7b_fast_r800|            191|         13,103|      1,438,531|
|zx7b|dzx7b_slow|             64|         13,103|      2,374,575|
|zx7b|dzx7b_slow_r800|             64|         13,103|      2,374,575|



test data:MEGASDHC.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,297|      7,705,336|
|Exomizer2|deexo_180|            167|         12,297|      7,706,438|
|Exomizer2|deexo_180_fast|            172|         12,297|      6,703,199|
|Exomizer2|deexo_180_fast_jp|            178|         12,297|      6,618,439|
|Exomizer3|deexo3p7|            176|         12,297|      6,143,310|
|Exomizer3|deexo3p7_fast|            179|         12,297|      5,251,846|
|Exomizer3|deexo3p7_fast_jp|            181|         12,297|      5,242,630|
|Exomizer3|deexo3|            197|         12,297|      5,478,882|
|Exomizer3|deexoopt_p7|            219|         12,297|      4,667,845|
|Exomizer3|deexoopt_f3_p7|            208|         12,297|      4,530,193|
|Exomizer3|deexoopt_f3_180_p7|            217|         12,297|      4,765,305|
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
|lzsa1|unlzsa1_fast_v1|            109|         13,703|        602,797|
|lzsa1|unlzsa1_small_v1|             68|         13,703|        646,744|
|lzsa2|unlzsa2_fast_v1|            214|         12,888|        996,712|
|lzsa2|unlzsa2_fast_v1_180|            212|         12,888|      1,013,200|
|lzsa2|unlzsa2_small_v1|            140|         12,888|      1,119,987|
|lzsa2|unlzsa2_small_v1_180|            138|         12,888|      1,136,475|
|MegaLZ|megalz_dec40|            110|         12,660|      2,979,373|
|Pletter|unpletter|            170|         12,700|      1,873,970|
|Pletter|unpletter_180|            169|         12,700|      1,873,978|
|Shrinkler|shrinkler_recall_209|            209|         11,916|    198,247,021|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         11,916|    198,247,021|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         11,916|    202,175,137|
|zx7b|dzx7b_fast|            191|         12,810|      1,341,173|
|zx7b|dzx7b_fast_r800|            191|         12,810|      1,341,173|
|zx7b|dzx7b_slow|             64|         12,810|      2,211,732|
|zx7b|dzx7b_slow_r800|             64|         12,810|      2,211,732|



test data:MSX2MAIN.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,740|      7,678,676|
|Exomizer2|deexo_180|            167|         12,740|      7,679,778|
|Exomizer2|deexo_180_fast|            172|         12,740|      6,695,658|
|Exomizer2|deexo_180_fast_jp|            178|         12,740|      6,614,072|
|Exomizer3|deexo3p7|            176|         12,739|      6,207,944|
|Exomizer3|deexo3p7_fast|            179|         12,739|      5,319,462|
|Exomizer3|deexo3p7_fast_jp|            181|         12,739|      5,309,942|
|Exomizer3|deexo3|            197|         12,739|      5,555,193|
|Exomizer3|deexoopt_p7|            219|         12,739|      4,714,326|
|Exomizer3|deexoopt_f3_p7|            208|         12,739|      4,572,675|
|Exomizer3|deexoopt_f3_180_p7|            217|         12,739|      4,815,437|
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
|lzsa1|unlzsa1_fast_v1|            109|         14,087|        602,124|
|lzsa1|unlzsa1_small_v1|             68|         14,087|        646,068|
|lzsa2|unlzsa2_fast_v1|            214|         13,372|        995,788|
|lzsa2|unlzsa2_fast_v1_180|            212|         13,372|      1,012,460|
|lzsa2|unlzsa2_small_v1|            140|         13,372|      1,116,787|
|lzsa2|unlzsa2_small_v1_180|            138|         13,372|      1,133,459|
|MegaLZ|megalz_dec40|            110|         13,072|      3,077,702|
|Pletter|unpletter|            170|         13,205|      1,788,932|
|Pletter|unpletter_180|            169|         13,205|      1,788,940|
|Shrinkler|shrinkler_recall_209|            209|         12,276|    202,922,527|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         12,276|    202,922,527|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         12,276|    206,980,245|
|zx7b|dzx7b_fast|            191|         13,248|      1,312,892|
|zx7b|dzx7b_fast_r800|            191|         13,248|      1,312,892|
|zx7b|dzx7b_slow|             64|         13,248|      2,140,196|
|zx7b|dzx7b_slow_r800|             64|         13,248|      2,140,196|



test data:MSX2MAIN.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         13,402|      8,119,431|
|Exomizer2|deexo_180|            167|         13,402|      8,120,533|
|Exomizer2|deexo_180_fast|            172|         13,402|      7,044,376|
|Exomizer2|deexo_180_fast_jp|            178|         13,402|      6,946,408|
|Exomizer3|deexo3p7|            176|         13,402|      6,031,181|
|Exomizer3|deexo3p7_fast|            179|         13,402|      5,165,489|
|Exomizer3|deexo3p7_fast_jp|            181|         13,402|      5,156,357|
|Exomizer3|deexo3|            197|         13,402|      5,409,124|
|Exomizer3|deexoopt_p7|            219|         13,402|      4,709,224|
|Exomizer3|deexoopt_f3_p7|            208|         13,402|      4,572,790|
|Exomizer3|deexoopt_f3_180_p7|            217|         13,402|      4,805,760|
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
|lzsa1|unlzsa1_fast_v1|            109|         14,892|        599,725|
|lzsa1|unlzsa1_small_v1|             68|         14,892|        642,632|
|lzsa2|unlzsa2_fast_v1|            214|         14,123|      1,029,061|
|lzsa2|unlzsa2_fast_v1_180|            212|         14,123|      1,046,013|
|lzsa2|unlzsa2_small_v1|            140|         14,123|      1,162,829|
|lzsa2|unlzsa2_small_v1_180|            138|         14,123|      1,179,781|
|MegaLZ|megalz_dec40|            110|         13,917|      3,129,990|
|Pletter|unpletter|            170|         13,909|      1,997,407|
|Pletter|unpletter_180|            169|         13,909|      1,997,415|
|Shrinkler|shrinkler_recall_209|            209|         13,100|    219,699,688|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         13,100|    219,699,688|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         13,100|    224,017,138|
|zx7b|dzx7b_fast|            191|         14,002|      1,411,404|
|zx7b|dzx7b_fast_r800|            191|         14,002|      1,411,404|
|zx7b|dzx7b_slow|             64|         14,002|      2,355,118|
|zx7b|dzx7b_slow_r800|             64|         14,002|      2,355,118|



test data:MSXMUSIC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,068|      5,986,114|
|Exomizer2|deexo_180|            167|         10,068|      5,987,216|
|Exomizer2|deexo_180_fast|            172|         10,068|      5,218,034|
|Exomizer2|deexo_180_fast_jp|            178|         10,068|      5,155,288|
|Exomizer3|deexo3p7|            176|         10,068|      4,792,485|
|Exomizer3|deexo3p7_fast|            179|         10,068|      4,112,838|
|Exomizer3|deexo3p7_fast_jp|            181|         10,068|      4,105,700|
|Exomizer3|deexo3|            197|         10,068|      4,292,489|
|Exomizer3|deexoopt_p7|            219|         10,068|      3,672,667|
|Exomizer3|deexoopt_f3_p7|            208|         10,068|      3,564,146|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,068|      3,746,269|
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
|lzsa1|unlzsa1_fast_v1|            109|         11,049|        577,731|
|lzsa1|unlzsa1_small_v1|             68|         11,049|        616,080|
|lzsa2|unlzsa2_fast_v1|            214|         10,420|        879,350|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,420|        892,478|
|lzsa2|unlzsa2_small_v1|            140|         10,420|        982,968|
|lzsa2|unlzsa2_small_v1_180|            138|         10,420|        996,096|
|MegaLZ|megalz_dec40|            110|         10,407|      2,560,679|
|Pletter|unpletter|            170|         10,466|      1,474,879|
|Pletter|unpletter_180|            169|         10,466|      1,474,887|
|Shrinkler|shrinkler_recall_209|            209|          9,536|    157,373,448|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,536|    157,373,448|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,536|    160,533,280|
|zx7b|dzx7b_fast|            191|         10,495|      1,103,981|
|zx7b|dzx7b_fast_r800|            191|         10,495|      1,103,981|
|zx7b|dzx7b_slow|             64|         10,495|      1,753,820|
|zx7b|dzx7b_slow_r800|             64|         10,495|      1,753,820|



test data:MSX2EXT.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         12,351|      8,066,566|
|Exomizer2|deexo_180|            167|         12,351|      8,067,668|
|Exomizer2|deexo_180_fast|            172|         12,351|      7,021,257|
|Exomizer2|deexo_180_fast_jp|            178|         12,351|      6,932,637|
|Exomizer3|deexo3p7|            176|         12,351|      6,374,679|
|Exomizer3|deexo3p7_fast|            179|         12,351|      5,462,561|
|Exomizer3|deexo3p7_fast_jp|            181|         12,351|      5,452,809|
|Exomizer3|deexo3|            197|         12,351|      5,703,404|
|Exomizer3|deexoopt_p7|            219|         12,351|      4,856,626|
|Exomizer3|deexoopt_f3_p7|            208|         12,351|      4,711,405|
|Exomizer3|deexoopt_f3_180_p7|            217|         12,351|      4,960,185|
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
|lzsa1|unlzsa1_fast_v1|            109|         13,720|        633,657|
|lzsa1|unlzsa1_small_v1|             68|         13,720|        683,001|
|lzsa2|unlzsa2_fast_v1|            214|         12,882|      1,010,801|
|lzsa2|unlzsa2_fast_v1_180|            212|         12,882|      1,027,889|
|lzsa2|unlzsa2_small_v1|            140|         12,882|      1,135,508|
|lzsa2|unlzsa2_small_v1_180|            138|         12,882|      1,152,596|
|MegaLZ|megalz_dec40|            110|         12,833|      3,030,834|
|Pletter|unpletter|            170|         12,858|      2,027,765|
|Pletter|unpletter_180|            169|         12,858|      2,027,773|
|Shrinkler|shrinkler_recall_209|            209|         11,820|    196,044,987|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         11,820|    196,044,987|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         11,820|    199,947,902|
|zx7b|dzx7b_fast|            191|         12,964|      1,328,878|
|zx7b|dzx7b_fast_r800|            191|         12,964|      1,328,878|
|zx7b|dzx7b_slow|             64|         12,964|      2,165,985|
|zx7b|dzx7b_slow_r800|             64|         12,964|      2,165,985|



test data:KANJJ1.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          6,097|      5,111,648|
|Exomizer2|deexo_180|            167|          6,097|      5,112,750|
|Exomizer2|deexo_180_fast|            172|          6,097|      4,465,787|
|Exomizer2|deexo_180_fast_jp|            178|          6,097|      4,407,853|
|Exomizer3|deexo3p7|            176|          6,097|      3,967,129|
|Exomizer3|deexo3p7_fast|            179|          6,097|      3,417,207|
|Exomizer3|deexo3p7_fast_jp|            181|          6,097|      3,411,495|
|Exomizer3|deexo3|            197|          6,097|      3,574,199|
|Exomizer3|deexoopt_p7|            219|          6,097|      3,141,994|
|Exomizer3|deexoopt_f3_p7|            208|          6,097|      3,051,152|
|Exomizer3|deexoopt_f3_180_p7|            217|          6,097|      3,196,912|
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
|lzsa1|unlzsa1_fast_v1|            109|          7,317|        699,355|
|lzsa1|unlzsa1_small_v1|             68|          7,317|        765,001|
|lzsa2|unlzsa2_fast_v1|            214|          6,523|        989,919|
|lzsa2|unlzsa2_fast_v1_180|            212|          6,523|      1,006,735|
|lzsa2|unlzsa2_small_v1|            140|          6,523|      1,106,738|
|lzsa2|unlzsa2_small_v1_180|            138|          6,523|      1,123,554|
|MegaLZ|megalz_dec40|            110|          6,514|      2,432,743|
|Pletter|unpletter|            170|          6,511|      1,461,388|
|Pletter|unpletter_180|            169|          6,511|      1,461,396|
|Shrinkler|shrinkler_recall_209|            209|          5,728|    102,142,021|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          5,728|    102,142,021|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          5,728|    104,134,819|
|zx7b|dzx7b_fast|            191|          6,591|      1,161,342|
|zx7b|dzx7b_fast_r800|            191|          6,591|      1,161,342|
|zx7b|dzx7b_slow|             64|          6,591|      1,765,077|
|zx7b|dzx7b_slow_r800|             64|          6,591|      1,765,077|



test data:KANJJ1.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          3,975|      3,493,148|
|Exomizer2|deexo_180|            167|          3,975|      3,494,250|
|Exomizer2|deexo_180_fast|            172|          3,975|      3,068,076|
|Exomizer2|deexo_180_fast_jp|            178|          3,975|      3,027,804|
|Exomizer3|deexo3p7|            176|          3,974|      2,708,049|
|Exomizer3|deexo3p7_fast|            179|          3,974|      2,349,018|
|Exomizer3|deexo3p7_fast_jp|            181|          3,974|      2,345,386|
|Exomizer3|deexo3|            197|          3,974|      2,448,056|
|Exomizer3|deexoopt_p7|            219|          3,974|      2,176,336|
|Exomizer3|deexoopt_f3_p7|            208|          3,974|      2,114,904|
|Exomizer3|deexoopt_f3_180_p7|            217|          3,974|      2,207,624|
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
|lzsa1|unlzsa1_fast_v1|            109|          4,805|        610,087|
|lzsa1|unlzsa1_small_v1|             68|          4,805|        656,934|
|lzsa2|unlzsa2_fast_v1|            214|          4,297|        806,464|
|lzsa2|unlzsa2_fast_v1_180|            212|          4,297|        818,288|
|lzsa2|unlzsa2_small_v1|            140|          4,297|        887,868|
|lzsa2|unlzsa2_small_v1_180|            138|          4,297|        899,692|
|MegaLZ|megalz_dec40|            110|          4,320|      1,795,413|
|Pletter|unpletter|            170|          4,269|      1,106,926|
|Pletter|unpletter_180|            169|          4,269|      1,106,934|
|Shrinkler|shrinkler_recall_209|            209|          3,700|     65,685,212|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          3,700|     65,685,212|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          3,700|     66,958,071|
|zx7b|dzx7b_fast|            191|          4,424|        930,945|
|zx7b|dzx7b_fast_r800|            191|          4,424|        930,945|
|zx7b|dzx7b_slow|             64|          4,424|      1,349,287|
|zx7b|dzx7b_slow_r800|             64|          4,424|      1,349,287|



test data:KANJJ1.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,688|      7,768,783|
|Exomizer2|deexo_180|            167|         10,688|      7,769,885|
|Exomizer2|deexo_180_fast|            172|         10,688|      6,730,942|
|Exomizer2|deexo_180_fast_jp|            178|         10,688|      6,635,982|
|Exomizer3|deexo3p7|            176|         10,688|      5,531,415|
|Exomizer3|deexo3p7_fast|            179|         10,688|      4,763,402|
|Exomizer3|deexo3p7_fast_jp|            181|         10,688|      4,754,980|
|Exomizer3|deexo3|            197|         10,688|      4,974,849|
|Exomizer3|deexoopt_p7|            219|         10,688|      4,341,061|
|Exomizer3|deexoopt_f3_p7|            208|         10,688|      4,210,061|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,688|      4,424,926|
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
|lzsa1|unlzsa1_fast_v1|            109|         12,545|        742,109|
|lzsa1|unlzsa1_small_v1|             68|         12,545|        814,228|
|lzsa2|unlzsa2_fast_v1|            214|         11,428|      1,185,333|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,428|      1,206,877|
|lzsa2|unlzsa2_small_v1|            140|         11,428|      1,346,062|
|lzsa2|unlzsa2_small_v1_180|            138|         11,428|      1,367,606|
|MegaLZ|megalz_dec40|            110|         11,362|      3,337,759|
|Pletter|unpletter|            170|         11,340|      2,176,730|
|Pletter|unpletter_180|            169|         11,340|      2,176,738|
|Shrinkler|shrinkler_recall_209|            209|         10,212|    184,251,287|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,212|    184,251,287|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,212|    187,790,113|
|zx7b|dzx7b_fast|            191|         11,629|      1,530,270|
|zx7b|dzx7b_fast_r800|            191|         11,629|      1,530,270|
|zx7b|dzx7b_slow|             64|         11,629|      2,506,048|
|zx7b|dzx7b_slow_r800|             64|         11,629|      2,506,048|



test data:KANJJ1.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,510|      7,603,571|
|Exomizer2|deexo_180|            167|         10,510|      7,604,673|
|Exomizer2|deexo_180_fast|            172|         10,510|      6,584,135|
|Exomizer2|deexo_180_fast_jp|            178|         10,510|      6,491,079|
|Exomizer3|deexo3p7|            176|         10,509|      5,446,711|
|Exomizer3|deexo3p7_fast|            179|         10,509|      4,679,854|
|Exomizer3|deexo3p7_fast_jp|            181|         10,509|      4,671,690|
|Exomizer3|deexo3|            197|         10,509|      4,889,398|
|Exomizer3|deexoopt_p7|            219|         10,509|      4,275,571|
|Exomizer3|deexoopt_f3_p7|            208|         10,509|      4,149,537|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,509|      4,357,823|
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
|lzsa1|unlzsa1_fast_v1|            109|         12,253|        748,450|
|lzsa1|unlzsa1_small_v1|             68|         12,253|        822,518|
|lzsa2|unlzsa2_fast_v1|            214|         11,165|      1,155,146|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,165|      1,175,954|
|lzsa2|unlzsa2_small_v1|            140|         11,165|      1,308,829|
|lzsa2|unlzsa2_small_v1_180|            138|         11,165|      1,329,637|
|MegaLZ|megalz_dec40|            110|         11,161|      3,294,363|
|Pletter|unpletter|            170|         11,105|      2,137,378|
|Pletter|unpletter_180|            169|         11,105|      2,137,386|
|Shrinkler|shrinkler_recall_209|            209|         10,020|    181,710,794|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,020|    181,710,794|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,020|    185,186,436|
|zx7b|dzx7b_fast|            191|         11,451|      1,505,939|
|zx7b|dzx7b_fast_r800|            191|         11,451|      1,505,939|
|zx7b|dzx7b_slow|             64|         11,451|      2,465,218|
|zx7b|dzx7b_slow_r800|             64|         11,451|      2,465,218|



test data:KANJJ1.B04(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,415|      7,416,607|
|Exomizer2|deexo_180|            167|         10,415|      7,417,709|
|Exomizer2|deexo_180_fast|            172|         10,415|      6,427,852|
|Exomizer2|deexo_180_fast_jp|            178|         10,415|      6,338,772|
|Exomizer3|deexo3p7|            176|         10,415|      5,360,921|
|Exomizer3|deexo3p7_fast|            179|         10,415|      4,610,302|
|Exomizer3|deexo3p7_fast_jp|            181|         10,415|      4,602,224|
|Exomizer3|deexo3|            197|         10,415|      4,815,949|
|Exomizer3|deexoopt_p7|            219|         10,415|      4,200,109|
|Exomizer3|deexoopt_f3_p7|            208|         10,415|      4,074,591|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,415|      4,280,684|
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
|lzsa1|unlzsa1_fast_v1|            109|         12,190|        750,459|
|lzsa1|unlzsa1_small_v1|             68|         12,190|        824,955|
|lzsa2|unlzsa2_fast_v1|            214|         11,070|      1,167,006|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,070|      1,188,014|
|lzsa2|unlzsa2_small_v1|            140|         11,070|      1,324,872|
|lzsa2|unlzsa2_small_v1_180|            138|         11,070|      1,345,880|
|MegaLZ|megalz_dec40|            110|         11,016|      3,271,673|
|Pletter|unpletter|            170|         10,992|      2,130,343|
|Pletter|unpletter_180|            169|         10,992|      2,130,351|
|Shrinkler|shrinkler_recall_209|            209|          9,876|    179,896,027|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,876|    179,896,027|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,876|    183,336,722|
|zx7b|dzx7b_fast|            191|         11,327|      1,521,877|
|zx7b|dzx7b_fast_r800|            191|         11,327|      1,521,877|
|zx7b|dzx7b_slow|             64|         11,327|      2,488,567|
|zx7b|dzx7b_slow_r800|             64|         11,327|      2,488,567|



test data:KANJJ1.B05(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,348|      7,475,213|
|Exomizer2|deexo_180|            167|         10,348|      7,476,315|
|Exomizer2|deexo_180_fast|            172|         10,348|      6,473,430|
|Exomizer2|deexo_180_fast_jp|            178|         10,348|      6,382,720|
|Exomizer3|deexo3p7|            176|         10,347|      5,383,242|
|Exomizer3|deexo3p7_fast|            179|         10,347|      4,624,586|
|Exomizer3|deexo3p7_fast_jp|            181|         10,347|      4,616,542|
|Exomizer3|deexo3|            197|         10,347|      4,828,463|
|Exomizer3|deexoopt_p7|            219|         10,347|      4,216,060|
|Exomizer3|deexoopt_f3_p7|            208|         10,347|      4,090,864|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,347|      4,296,090|
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
|lzsa1|unlzsa1_fast_v1|            109|         12,075|        754,472|
|lzsa1|unlzsa1_small_v1|             68|         12,075|        829,734|
|lzsa2|unlzsa2_fast_v1|            214|         10,960|      1,161,776|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,960|      1,182,704|
|lzsa2|unlzsa2_small_v1|            140|         10,960|      1,318,093|
|lzsa2|unlzsa2_small_v1_180|            138|         10,960|      1,339,021|
|MegaLZ|megalz_dec40|            110|         11,012|      3,284,220|
|Pletter|unpletter|            170|         10,908|      2,106,071|
|Pletter|unpletter_180|            169|         10,908|      2,106,079|
|Shrinkler|shrinkler_recall_209|            209|          9,808|    178,129,932|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,808|    178,129,932|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,808|    181,532,215|
|zx7b|dzx7b_fast|            191|         11,341|      1,500,846|
|zx7b|dzx7b_fast_r800|            191|         11,341|      1,500,846|
|zx7b|dzx7b_slow|             64|         11,341|      2,450,589|
|zx7b|dzx7b_slow_r800|             64|         11,341|      2,450,589|



test data:KANJJ1.B06(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|         10,650|      7,752,805|
|Exomizer2|deexo_180|            167|         10,650|      7,753,907|
|Exomizer2|deexo_180_fast|            172|         10,650|      6,711,312|
|Exomizer2|deexo_180_fast_jp|            178|         10,650|      6,616,092|
|Exomizer3|deexo3p7|            176|         10,650|      5,584,601|
|Exomizer3|deexo3p7_fast|            179|         10,650|      4,791,391|
|Exomizer3|deexo3p7_fast_jp|            181|         10,650|      4,783,085|
|Exomizer3|deexo3|            197|         10,650|      5,001,850|
|Exomizer3|deexoopt_p7|            219|         10,650|      4,366,865|
|Exomizer3|deexoopt_f3_p7|            208|         10,650|      4,237,496|
|Exomizer3|deexoopt_f3_180_p7|            217|         10,650|      4,449,403|
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
|lzsa1|unlzsa1_fast_v1|            109|         12,508|        760,039|
|lzsa1|unlzsa1_small_v1|             68|         12,508|        835,969|
|lzsa2|unlzsa2_fast_v1|            214|         11,386|      1,185,653|
|lzsa2|unlzsa2_fast_v1_180|            212|         11,386|      1,207,173|
|lzsa2|unlzsa2_small_v1|            140|         11,386|      1,347,032|
|lzsa2|unlzsa2_small_v1_180|            138|         11,386|      1,368,552|
|MegaLZ|megalz_dec40|            110|         11,281|      3,337,059|
|Pletter|unpletter|            170|         11,252|      2,178,723|
|Pletter|unpletter_180|            169|         11,252|      2,178,731|
|Shrinkler|shrinkler_recall_209|            209|         10,148|    184,730,043|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|         10,148|    184,730,043|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|         10,148|    188,255,537|
|zx7b|dzx7b_fast|            191|         11,601|      1,529,557|
|zx7b|dzx7b_fast_r800|            191|         11,601|      1,529,557|
|zx7b|dzx7b_slow|             64|         11,601|      2,506,261|
|zx7b|dzx7b_slow_r800|             64|         11,601|      2,506,261|



test data:KANJJ1.B07(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|---|---|---:|---:|---:|
|Exomizer2|deexo|            169|          9,701|      7,135,248|
|Exomizer2|deexo_180|            167|          9,701|      7,136,350|
|Exomizer2|deexo_180_fast|            172|          9,701|      6,186,070|
|Exomizer2|deexo_180_fast_jp|            178|          9,701|      6,099,064|
|Exomizer3|deexo3p7|            176|          9,701|      5,093,013|
|Exomizer3|deexo3p7_fast|            179|          9,701|      4,389,060|
|Exomizer3|deexo3p7_fast_jp|            181|          9,701|      4,381,376|
|Exomizer3|deexo3|            197|          9,701|      4,582,788|
|Exomizer3|deexoopt_p7|            219|          9,701|      4,006,872|
|Exomizer3|deexoopt_f3_p7|            208|          9,701|      3,887,476|
|Exomizer3|deexoopt_f3_180_p7|            217|          9,701|      4,083,522|
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
|lzsa1|unlzsa1_fast_v1|            109|         11,389|        720,938|
|lzsa1|unlzsa1_small_v1|             68|         11,389|        788,982|
|lzsa2|unlzsa2_fast_v1|            214|         10,373|      1,101,234|
|lzsa2|unlzsa2_fast_v1_180|            212|         10,373|      1,120,402|
|lzsa2|unlzsa2_small_v1|            140|         10,373|      1,247,241|
|lzsa2|unlzsa2_small_v1_180|            138|         10,373|      1,266,409|
|MegaLZ|megalz_dec40|            110|         10,247|      3,070,083|
|Pletter|unpletter|            170|         10,245|      1,996,630|
|Pletter|unpletter_180|            169|         10,245|      1,996,638|
|Shrinkler|shrinkler_recall_209|            209|          9,212|    166,951,906|
|Shrinkler|shrinkler_recall_209_r800_ram|            209|          9,212|    166,951,906|
|Shrinkler|shrinkler_recall_209_r800_rom|            211|          9,212|    170,158,873|
|zx7b|dzx7b_fast|            191|         10,586|      1,431,824|
|zx7b|dzx7b_fast_r800|            191|         10,586|      1,431,824|
|zx7b|dzx7b_slow|             64|         10,586|      2,328,107|
|zx7b|dzx7b_slow_r800|             64|         10,586|      2,328,107|




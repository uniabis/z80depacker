
# Depackers for Z80

## Packers

### [Exomizer](https://bitbucket.org/magli143/exomizer/wiki/Home) v3.0.2(raw -P0)

License:LGPL

### [hruST mhmt](https://github.com/lvd2/mhmt)   (-hst)

License:GPLv3

[mhmt google code archive](https://code.google.com/archive/p/mhmt/source/default/source)

### [lze](http://gorry.haun.org/pw/?lze) 20080228a

### MegaLZ v4.89

### [Pletter](http://www.xl2s.tk/) v0.5c1

License:Mit

### [Shrinkler](https://github.com/askeksa/Shrinkler) v4.5(-d -9)

[Shrinkler Z80](https://cpcrulez.fr/applications_tools_cruncher_shrinkler_Z80.htm)

### [zx7b](https://github.com/antoniovillena/zx7b) v1.01

License:CC-BY-SA

## Compression rate

test data:DEOCM-PLD-CV BIOS(16x16KB)

|SectionName|exomizer|mhmt-base|lze|megalz|pletter|shrinkler|zx7b|
|-|-|-|-|-|-|-|-|
|MEGASDHC.B00|9,373|9,397|10,092|9,718|9,706|8,984|9,762|
|MEGASDHC.B01|4,902|4,923|5,463|5,124|5,083|4,680|5,091|
|MEGASDHC.B02|12,494|12,592|13,472|12,965|12,945|12,148|13,103|
|MEGASDHC.B03|12,297|12,320|13,187|12,660|12,700|11,916|12,810|
|MSX2MAIN.B00|12,740|12,790|13,698|13,072|13,205|12,276|13,248|
|MSX2MAIN.B01|13,402|13,485|14,389|13,917|13,909|13,100|14,002|
|MSXMUSIC.B00|10,068|10,118|10,830|10,407|10,466|9,536|10,495|
|MSX2EXT.B00|12,351|12,370|13,303|12,833|12,858|11,820|12,964|
|KANJJ1.B00|6,097|6,454|7,027|6,514|6,511|5,728|6,591|
|KANJJ1.B01|3,975|4,241|4,664|4,320|4,269|3,700|4,424|
|KANJJ1.B02|10,688|10,960|11,696|11,362|11,340|10,212|11,629|
|KANJJ1.B03|10,510|10,765|11,493|11,161|11,105|10,020|11,451|
|KANJJ1.B04|10,415|10,708|11,373|11,016|10,992|9,876|11,327|
|KANJJ1.B05|10,348|10,610|11,283|11,012|10,908|9,808|11,341|
|KANJJ1.B06|10,650|10,934|11,634|11,281|11,252|10,148|11,601|
|KANJJ1.B07|9,701|9,953|10,578|10,247|10,245|9,212|10,586|
|ALL|160,011|162,620|174,182|167,609|167,494|153,164|170,425|


## Decompression speed


test data:MEGASDHC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|      9,373|  5,908,411|
|Exomizer|deexo_180.asm|        168|      9,373|  5,909,517|
|Exomizer|deexo_180_fast.asm|        173|      9,373|  5,147,822|
|Exomizer|deexo_180_fast_jp.asm|        184|      9,373|  5,103,279|
|mhmt|dehrust_ix|        234|      9,397|  2,400,116|
|mhmt|dehrust_stk|        209|      9,397|  2,160,551|
|lze|lzdec|        119|     10,092|  1,213,495|
|lze|lzdec_106|        106|     10,092|  1,135,800|
|MegaLZ|megalz_dec40|        110|      9,718|  2,363,816|
|Pletter|unpletter	|        170|      9,706|  1,459,575|
|Pletter|unpletter_180|        169|      9,706|  1,459,583|
|Shrinkler|shrinkler_recall_209|        209|      8,984|147,898,055|
|Shrinkler|shrinkler_recall_209_r800|        209|      8,984|147,898,055|
|zx7b|dzx7b_fast|        191|      9,762|  1,088,297|
|zx7b|dzx7b_fast_r800|        193|      9,762|  1,099,847|
|zx7b|dzx7b_slow|        64|      9,762|  1,718,914|
|zx7b|dzx7b_slow_r800|        65|      9,762|  1,730,464|



test data:MEGASDHC.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|      4,902|  3,307,149|
|Exomizer|deexo_180.asm|        168|      4,902|  3,308,255|
|Exomizer|deexo_180_fast.asm|        173|      4,902|  2,910,323|
|Exomizer|deexo_180_fast_jp.asm|        184|      4,902|  2,887,834|
|mhmt|dehrust_ix|        234|      4,923|  1,520,370|
|mhmt|dehrust_stk|        209|      4,923|  1,393,765|
|lze|lzdec|        119|      5,463|    846,520|
|lze|lzdec_106|        106|      5,463|    801,278|
|MegaLZ|megalz_dec40|        110|      5,124|  1,578,986|
|Pletter|unpletter	|        170|      5,083|    905,030|
|Pletter|unpletter_180|        169|      5,083|    905,038|
|Shrinkler|shrinkler_recall_209|        209|      4,680| 78,117,653|
|Shrinkler|shrinkler_recall_209_r800|        209|      4,680| 78,117,653|
|zx7b|dzx7b_fast|        191|      5,091|    769,861|
|zx7b|dzx7b_fast_r800|        193|      5,091|    776,056|
|zx7b|dzx7b_slow|        64|      5,091|  1,109,193|
|zx7b|dzx7b_slow_r800|        65|      5,091|  1,115,388|



test data:MEGASDHC.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     12,494|  7,962,111|
|Exomizer|deexo_180.asm|        168|     12,494|  7,963,217|
|Exomizer|deexo_180_fast.asm|        173|     12,494|  6,909,262|
|Exomizer|deexo_180_fast_jp.asm|        184|     12,494|  6,846,967|
|mhmt|dehrust_ix|        234|     12,592|  3,184,499|
|mhmt|dehrust_stk|        209|     12,592|  2,868,962|
|lze|lzdec|        119|     13,472|  1,536,039|
|lze|lzdec_106|        106|     13,472|  1,423,485|
|MegaLZ|megalz_dec40|        110|     12,965|  3,108,603|
|Pletter|unpletter	|        170|     12,945|  1,990,443|
|Pletter|unpletter_180|        169|     12,945|  1,990,451|
|Shrinkler|shrinkler_recall_209|        209|     12,148|204,353,362|
|Shrinkler|shrinkler_recall_209_r800|        209|     12,148|204,353,362|
|zx7b|dzx7b_fast|        191|     13,103|  1,438,531|
|zx7b|dzx7b_fast_r800|        193|     13,103|  1,456,646|
|zx7b|dzx7b_slow|        64|     13,103|  2,374,575|
|zx7b|dzx7b_slow_r800|        65|     13,103|  2,392,690|



test data:MEGASDHC.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     12,297|  7,705,336|
|Exomizer|deexo_180.asm|        168|     12,297|  7,706,442|
|Exomizer|deexo_180_fast.asm|        173|     12,297|  6,703,203|
|Exomizer|deexo_180_fast_jp.asm|        184|     12,297|  6,645,226|
|mhmt|dehrust_ix|        234|     12,320|  2,994,167|
|mhmt|dehrust_stk|        209|     12,320|  2,684,358|
|lze|lzdec|        119|     13,187|  1,481,802|
|lze|lzdec_106|        106|     13,187|  1,377,447|
|MegaLZ|megalz_dec40|        110|     12,660|  2,979,373|
|Pletter|unpletter	|        170|     12,700|  1,873,970|
|Pletter|unpletter_180|        169|     12,700|  1,873,978|
|Shrinkler|shrinkler_recall_209|        209|     11,916|198,247,021|
|Shrinkler|shrinkler_recall_209_r800|        209|     11,916|198,247,021|
|zx7b|dzx7b_fast|        191|     12,810|  1,341,173|
|zx7b|dzx7b_fast_r800|        193|     12,810|  1,357,098|
|zx7b|dzx7b_slow|        64|     12,810|  2,211,732|
|zx7b|dzx7b_slow_r800|        65|     12,810|  2,227,657|



test data:MSX2MAIN.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     12,740|  7,678,676|
|Exomizer|deexo_180.asm|        168|     12,740|  7,679,782|
|Exomizer|deexo_180_fast.asm|        173|     12,740|  6,695,662|
|Exomizer|deexo_180_fast_jp.asm|        184|     12,740|  6,640,800|
|mhmt|dehrust_ix|        234|     12,790|  3,081,329|
|mhmt|dehrust_stk|        209|     12,790|  2,753,298|
|lze|lzdec|        119|     13,698|  1,533,796|
|lze|lzdec_106|        106|     13,698|  1,420,448|
|MegaLZ|megalz_dec40|        110|     13,072|  3,077,702|
|Pletter|unpletter	|        170|     13,205|  1,788,932|
|Pletter|unpletter_180|        169|     13,205|  1,788,940|
|Shrinkler|shrinkler_recall_209|        209|     12,276|202,922,527|
|Shrinkler|shrinkler_recall_209_r800|        209|     12,276|202,922,527|
|zx7b|dzx7b_fast|        191|     13,248|  1,312,892|
|zx7b|dzx7b_fast_r800|        193|     13,248|  1,328,717|
|zx7b|dzx7b_slow|        64|     13,248|  2,140,196|
|zx7b|dzx7b_slow_r800|        65|     13,248|  2,156,021|



test data:MSX2MAIN.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     13,402|  8,119,431|
|Exomizer|deexo_180.asm|        168|     13,402|  8,120,537|
|Exomizer|deexo_180_fast.asm|        173|     13,402|  7,044,380|
|Exomizer|deexo_180_fast_jp.asm|        184|     13,402|  6,979,927|
|mhmt|dehrust_ix|        234|     13,485|  3,142,810|
|mhmt|dehrust_stk|        209|     13,485|  2,808,962|
|lze|lzdec|        119|     14,389|  1,560,048|
|lze|lzdec_106|        106|     14,389|  1,451,626|
|MegaLZ|megalz_dec40|        110|     13,917|  3,129,990|
|Pletter|unpletter	|        170|     13,909|  1,997,407|
|Pletter|unpletter_180|        169|     13,909|  1,997,415|
|Shrinkler|shrinkler_recall_209|        209|     13,100|219,699,688|
|Shrinkler|shrinkler_recall_209_r800|        209|     13,100|219,699,688|
|zx7b|dzx7b_fast|        191|     14,002|  1,411,404|
|zx7b|dzx7b_fast_r800|        193|     14,002|  1,428,649|
|zx7b|dzx7b_slow|        64|     14,002|  2,355,118|
|zx7b|dzx7b_slow_r800|        65|     14,002|  2,372,363|



test data:MSXMUSIC.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,068|  5,986,114|
|Exomizer|deexo_180.asm|        168|     10,068|  5,987,220|
|Exomizer|deexo_180_fast.asm|        173|     10,068|  5,218,038|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,068|  5,174,139|
|mhmt|dehrust_ix|        234|     10,118|  2,529,789|
|mhmt|dehrust_stk|        209|     10,118|  2,274,112|
|lze|lzdec|        119|     10,830|  1,270,114|
|lze|lzdec_106|        106|     10,830|  1,187,019|
|MegaLZ|megalz_dec40|        110|     10,407|  2,560,679|
|Pletter|unpletter	|        170|     10,466|  1,474,879|
|Pletter|unpletter_180|        169|     10,466|  1,474,887|
|Shrinkler|shrinkler_recall_209|        209|      9,536|157,373,448|
|Shrinkler|shrinkler_recall_209_r800|        209|      9,536|157,373,448|
|zx7b|dzx7b_fast|        191|     10,495|  1,103,981|
|zx7b|dzx7b_fast_r800|        193|     10,495|  1,115,571|
|zx7b|dzx7b_slow|        64|     10,495|  1,753,820|
|zx7b|dzx7b_slow_r800|        65|     10,495|  1,765,410|



test data:MSX2EXT.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     12,351|  8,066,566|
|Exomizer|deexo_180.asm|        168|     12,351|  8,067,672|
|Exomizer|deexo_180_fast.asm|        173|     12,351|  7,021,261|
|Exomizer|deexo_180_fast_jp.asm|        184|     12,351|  6,961,868|
|mhmt|dehrust_ix|        234|     12,370|  3,112,516|
|mhmt|dehrust_stk|        209|     12,370|  2,798,981|
|lze|lzdec|        119|     13,303|  1,505,104|
|lze|lzdec_106|        106|     13,303|  1,395,324|
|MegaLZ|megalz_dec40|        110|     12,833|  3,030,834|
|Pletter|unpletter	|        170|     12,858|  2,027,765|
|Pletter|unpletter_180|        169|     12,858|  2,027,773|
|Shrinkler|shrinkler_recall_209|        209|     11,820|196,044,987|
|Shrinkler|shrinkler_recall_209_r800|        209|     11,820|196,044,987|
|zx7b|dzx7b_fast|        191|     12,964|  1,328,878|
|zx7b|dzx7b_fast_r800|        193|     12,964|  1,344,828|
|zx7b|dzx7b_slow|        64|     12,964|  2,165,985|
|zx7b|dzx7b_slow_r800|        65|     12,964|  2,181,935|



test data:KANJJ1.B00(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|      6,097|  5,111,648|
|Exomizer|deexo_180.asm|        168|      6,097|  5,112,754|
|Exomizer|deexo_180_fast.asm|        173|      6,097|  4,465,791|
|Exomizer|deexo_180_fast_jp.asm|        184|      6,097|  4,432,577|
|mhmt|dehrust_ix|        234|      6,454|  2,490,929|
|mhmt|dehrust_stk|        209|      6,454|  2,300,068|
|lze|lzdec|        119|      7,027|  1,145,514|
|lze|lzdec_106|        106|      7,027|  1,056,524|
|MegaLZ|megalz_dec40|        110|      6,514|  2,432,743|
|Pletter|unpletter	|        170|      6,511|  1,461,388|
|Pletter|unpletter_180|        169|      6,511|  1,461,396|
|Shrinkler|shrinkler_recall_209|        209|      5,728|102,142,021|
|Shrinkler|shrinkler_recall_209_r800|        209|      5,728|102,142,021|
|zx7b|dzx7b_fast|        191|      6,591|  1,161,342|
|zx7b|dzx7b_fast_r800|        193|      6,591|  1,173,877|
|zx7b|dzx7b_slow|        64|      6,591|  1,765,077|
|zx7b|dzx7b_slow_r800|        65|      6,591|  1,777,612|



test data:KANJJ1.B01(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|      3,975|  3,493,148|
|Exomizer|deexo_180.asm|        168|      3,975|  3,494,254|
|Exomizer|deexo_180_fast.asm|        173|      3,975|  3,068,080|
|Exomizer|deexo_180_fast_jp.asm|        184|      3,975|  3,046,689|
|mhmt|dehrust_ix|        234|      4,241|  1,826,309|
|mhmt|dehrust_stk|        209|      4,241|  1,698,453|
|lze|lzdec|        119|      4,664|    907,166|
|lze|lzdec_106|        106|      4,664|    844,007|
|MegaLZ|megalz_dec40|        110|      4,320|  1,795,413|
|Pletter|unpletter	|        170|      4,269|  1,106,926|
|Pletter|unpletter_180|        169|      4,269|  1,106,934|
|Shrinkler|shrinkler_recall_209|        209|      3,700| 65,685,212|
|Shrinkler|shrinkler_recall_209_r800|        209|      3,700| 65,685,212|
|zx7b|dzx7b_fast|        191|      4,424|    930,945|
|zx7b|dzx7b_fast_r800|        193|      4,424|    939,750|
|zx7b|dzx7b_slow|        64|      4,424|  1,349,287|
|zx7b|dzx7b_slow_r800|        65|      4,424|  1,358,092|



test data:KANJJ1.B02(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,688|  7,768,783|
|Exomizer|deexo_180.asm|        168|     10,688|  7,769,889|
|Exomizer|deexo_180_fast.asm|        173|     10,688|  6,730,946|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,688|  6,671,145|
|mhmt|dehrust_ix|        234|     10,960|  3,286,239|
|mhmt|dehrust_stk|        209|     10,960|  2,990,229|
|lze|lzdec|        119|     11,696|  1,503,720|
|lze|lzdec_106|        106|     11,696|  1,387,509|
|MegaLZ|megalz_dec40|        110|     11,362|  3,337,759|
|Pletter|unpletter	|        170|     11,340|  2,176,730|
|Pletter|unpletter_180|        169|     11,340|  2,176,738|
|Shrinkler|shrinkler_recall_209|        209|     10,212|184,251,287|
|Shrinkler|shrinkler_recall_209_r800|        209|     10,212|184,251,287|
|zx7b|dzx7b_fast|        191|     11,629|  1,530,270|
|zx7b|dzx7b_fast_r800|        193|     11,629|  1,549,850|
|zx7b|dzx7b_slow|        64|     11,629|  2,506,048|
|zx7b|dzx7b_slow_r800|        65|     11,629|  2,525,628|



test data:KANJJ1.B03(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,510|  7,603,571|
|Exomizer|deexo_180.asm|        168|     10,510|  7,604,677|
|Exomizer|deexo_180_fast.asm|        173|     10,510|  6,584,139|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,510|  6,524,879|
|mhmt|dehrust_ix|        234|     10,765|  3,242,574|
|mhmt|dehrust_stk|        209|     10,765|  2,950,438|
|lze|lzdec|        119|     11,493|  1,480,718|
|lze|lzdec_106|        106|     11,493|  1,367,767|
|MegaLZ|megalz_dec40|        110|     11,161|  3,294,363|
|Pletter|unpletter	|        170|     11,105|  2,137,378|
|Pletter|unpletter_180|        169|     11,105|  2,137,386|
|Shrinkler|shrinkler_recall_209|        209|     10,020|181,710,794|
|Shrinkler|shrinkler_recall_209_r800|        209|     10,020|181,710,794|
|zx7b|dzx7b_fast|        191|     11,451|  1,505,939|
|zx7b|dzx7b_fast_r800|        193|     11,451|  1,524,884|
|zx7b|dzx7b_slow|        64|     11,451|  2,465,218|
|zx7b|dzx7b_slow_r800|        65|     11,451|  2,484,163|



test data:KANJJ1.B04(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,415|  7,416,607|
|Exomizer|deexo_180.asm|        168|     10,415|  7,417,713|
|Exomizer|deexo_180_fast.asm|        173|     10,415|  6,427,856|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,415|  6,371,370|
|mhmt|dehrust_ix|        234|     10,708|  3,254,294|
|mhmt|dehrust_stk|        209|     10,708|  2,963,646|
|lze|lzdec|        119|     11,373|  1,480,839|
|lze|lzdec_106|        106|     11,373|  1,366,332|
|MegaLZ|megalz_dec40|        110|     11,016|  3,271,673|
|Pletter|unpletter	|        170|     10,992|  2,130,343|
|Pletter|unpletter_180|        169|     10,992|  2,130,351|
|Shrinkler|shrinkler_recall_209|        209|      9,876|179,896,027|
|Shrinkler|shrinkler_recall_209_r800|        209|      9,876|179,896,027|
|zx7b|dzx7b_fast|        191|     11,327|  1,521,877|
|zx7b|dzx7b_fast_r800|        193|     11,327|  1,541,167|
|zx7b|dzx7b_slow|        64|     11,327|  2,488,567|
|zx7b|dzx7b_slow_r800|        65|     11,327|  2,507,857|



test data:KANJJ1.B05(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,348|  7,475,213|
|Exomizer|deexo_180.asm|        168|     10,348|  7,476,319|
|Exomizer|deexo_180_fast.asm|        173|     10,348|  6,473,434|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,348|  6,415,365|
|mhmt|dehrust_ix|        234|     10,610|  3,218,897|
|mhmt|dehrust_stk|        209|     10,610|  2,929,495|
|lze|lzdec|        119|     11,283|  1,468,273|
|lze|lzdec_106|        106|     11,283|  1,355,831|
|MegaLZ|megalz_dec40|        110|     11,012|  3,284,220|
|Pletter|unpletter	|        170|     10,908|  2,106,071|
|Pletter|unpletter_180|        169|     10,908|  2,106,079|
|Shrinkler|shrinkler_recall_209|        209|      9,808|178,129,932|
|Shrinkler|shrinkler_recall_209_r800|        209|      9,808|178,129,932|
|zx7b|dzx7b_fast|        191|     11,341|  1,500,846|
|zx7b|dzx7b_fast_r800|        193|     11,341|  1,519,786|
|zx7b|dzx7b_slow|        64|     11,341|  2,450,589|
|zx7b|dzx7b_slow_r800|        65|     11,341|  2,469,529|



test data:KANJJ1.B06(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|     10,650|  7,752,805|
|Exomizer|deexo_180.asm|        168|     10,650|  7,753,911|
|Exomizer|deexo_180_fast.asm|        173|     10,650|  6,711,316|
|Exomizer|deexo_180_fast_jp.asm|        184|     10,650|  6,650,849|
|mhmt|dehrust_ix|        234|     10,934|  3,297,965|
|mhmt|dehrust_stk|        209|     10,934|  3,001,103|
|lze|lzdec|        119|     11,634|  1,504,858|
|lze|lzdec_106|        106|     11,634|  1,388,464|
|MegaLZ|megalz_dec40|        110|     11,281|  3,337,059|
|Pletter|unpletter	|        170|     11,252|  2,178,723|
|Pletter|unpletter_180|        169|     11,252|  2,178,731|
|Shrinkler|shrinkler_recall_209|        209|     10,148|184,730,043|
|Shrinkler|shrinkler_recall_209_r800|        209|     10,148|184,730,043|
|zx7b|dzx7b_fast|        191|     11,601|  1,529,557|
|zx7b|dzx7b_fast_r800|        193|     11,601|  1,549,062|
|zx7b|dzx7b_slow|        64|     11,601|  2,506,261|
|zx7b|dzx7b_slow_r800|        65|     11,601|  2,525,766|



test data:KANJJ1.B07(16KB)

|packer|unpacker|unpacker size|packed size|unpacking clocks|
|-|-|-|-|-|
|Exomizer|deexo.asm|        169|      9,701|  7,135,248|
|Exomizer|deexo_180.asm|        168|      9,701|  7,136,354|
|Exomizer|deexo_180_fast.asm|        173|      9,701|  6,186,074|
|Exomizer|deexo_180_fast_jp.asm|        184|      9,701|  6,131,047|
|mhmt|dehrust_ix|        234|      9,953|  3,024,595|
|mhmt|dehrust_stk|        209|      9,953|  2,757,158|
|lze|lzdec|        119|     10,578|  1,393,220|
|lze|lzdec_106|        106|     10,578|  1,288,856|
|MegaLZ|megalz_dec40|        110|     10,247|  3,070,083|
|Pletter|unpletter	|        170|     10,245|  1,996,630|
|Pletter|unpletter_180|        169|     10,245|  1,996,638|
|Shrinkler|shrinkler_recall_209|        209|      9,212|166,951,906|
|Shrinkler|shrinkler_recall_209_r800|        209|      9,212|166,951,906|
|zx7b|dzx7b_fast|        191|     10,586|  1,431,824|
|zx7b|dzx7b_fast_r800|        193|     10,586|  1,449,679|
|zx7b|dzx7b_slow|        64|     10,586|  2,328,107|
|zx7b|dzx7b_slow_r800|        65|     10,586|  2,345,962|



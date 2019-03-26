
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

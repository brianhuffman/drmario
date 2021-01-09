ca65 -t c64 -o drmario.o drmario.ca65
ld65 --lib c64.lib -C rom32k.cfg -o drmario.prg drmario.o
ld65 -C drmario.cfg -o drmario.nes drmario.o
diff drmario.prg drmario.prg.gold

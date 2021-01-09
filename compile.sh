ca65 -t c64 -o drmario.o drmario.ca65
ld65 --lib c64.lib -C rom32k.cfg --start-addr \$8000 -o drmario.rom drmario.o
diff drmario.rom drmario.prg.gold

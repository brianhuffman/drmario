ca65 -t nes -o drmario.o drmario.a65
ld65 -C drmario.cfg -o drmario.nes drmario.o
diff drmario.nes drmario.nes.gold

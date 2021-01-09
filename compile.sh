ca65 -t nes -o drmario.o drmario.a65
ca65 -t nes -o drmario_a.o drmario_a.a65
ld65 -C drmario.cfg -o drmario.nes drmario.o
ld65 -C drmario.cfg -o drmario_a.nes drmario_a.o
diff drmario.nes drmario.nes.gold
diff drmario_a.nes drmario_a.nes.gold

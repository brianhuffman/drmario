ca65 -t nes -o drmario.o drmario.a65
ca65 -t nes -o drmario_a.o drmario_a.a65
ld65 -C drmario.cfg -o drmario.nes drmario.o
ld65 -C drmario.cfg -o drmario_a.nes drmario_a.o
md5sum -c drmario.nes.md5
md5sum -c drmario_a.nes.md5

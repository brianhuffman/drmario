default: drmario.nes

.PHONY: default all test clean

all: drmario.nes drmario_a.nes

test: drmario.nes drmario_a.nes
	md5sum -c drmario.nes.md5
	md5sum -c drmario_a.nes.md5

clean:
	rm -f drmario.o drmario_a.o drmario.nes drmario_a.nes

drmario.o: drmario.a65 macros.a65 audio.a65
	ca65 -t nes -o $@ drmario.a65

drmario_a.o: drmario_a.a65 drmario.a65 macros.a65 audio.a65
	ca65 -t nes -o $@ drmario_a.a65

%.nes: %.o
	ld65 -C drmario.cfg -o $@ $<

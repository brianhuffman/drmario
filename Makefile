default: drmario.nes

.PHONY: default all test clean

all: drmario.nes drmario_a.nes

test: drmario.nes drmario_a.nes
	diff drmario.nes drmario.nes.gold
	diff drmario_a.nes drmario_a.nes.gold

clean:
	rm -f drmario.o drmario_a.o drmario.nes drmario_a.nes

%.o: %.a65
	ca65 -t nes -o $@ $<

%.nes: %.o
	ld65 -C drmario.cfg -o $@ $<

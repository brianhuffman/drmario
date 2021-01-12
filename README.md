# 6502 Disassembly of Dr. Mario NES game

The assembly code is written to be compiled with `ca65`, which is part
of the `cc65` suite of tools (https://cc65.github.io/). On MacOS, the
tools can be installed using homebrew with `brew install cc65`.

The ROM images (`drmario.nes` for the original NTSC version, and
`drmario_a.nes` for NTSC revision A) can be compiled from source using
the included makefile with `make all`.

Running `make test` generates the ROM images and compares them with
the expected output.

FASM ?= "fasm"
.PHONY: all clean

all: dist dist/backdoor-asm-elf

clean:
	$(RM) -r dist

dist/backdoor-asm-%: %.s
	$(FASM) $< dist/backdoor-asm-$*
	chmod +x dist/backdoor-asm-$*

dist:
	mkdir -p dist

.PHONY: all clean

all: dist dist/backdoor-make.Makefile

clean:
	$(RM) -r dist

dist/%-make.Makefile: %.Makefile
	@# for comedic value
	$(MAKE) -f $<
	cp $< dist/$*-make.Makefile

dist:
	mkdir -p dist

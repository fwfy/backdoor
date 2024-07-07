.PHONY: all clean

all: dist dist/backdoor-scratch3.sb3

clean:
	$(RM) -r dist

dist/%-scratch3.sb3: %.sb3
	cp $< dist/$*-scratch3.sb3

dist:
	mkdir -p dist

.PHONY: all clean

all: dist dist/backdoor-js.js

clean:
	$(RM) -r dist

dist/%-js.js: %.js
	cp $< dist/$*-js.js

dist:
	mkdir -p dist

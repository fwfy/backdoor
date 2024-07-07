.PHONY: all clean

all: dist dist/backdoor-lua.lua

clean:
	$(RM) -r dist

dist/%-lua.lua: %.lua
	cp $< dist/$*-lua.lua

dist:
	mkdir -p dist

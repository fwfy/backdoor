CC ?= "cc"
.PHONY: all clean

all: dist dist/backdoor-c

clean:
	$(RM) -r dist

dist/%-c: %.c
	$(CC) $< -Os -flto -o dist/$*-c

dist:
	mkdir -p dist

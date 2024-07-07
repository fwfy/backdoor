.PHONY: all clean

all: dist dist/backdoor-python.py

clean:
	$(RM) -r dist

dist/%-python.py: %.py
	cp $< dist/$*-python.py

dist:
	mkdir -p dist

CXX ?= "c++"
.PHONY: all clean

all: dist dist/backdoor-cpp

clean:
	$(RM) -r dist

dist/%-cpp: %.cpp
	$(CXX) $< -Os -flto -o dist/$*-cpp

dist:
	mkdir -p dist

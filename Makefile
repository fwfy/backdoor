SUBMAKES = asm c c++ java javascript lua make python rust scratch
.PHONY: all clean phony_bypass

all: $(addsuffix .make, $(SUBMAKES))

clean:
	$(RM) -r dist
	$(foreach var,${SUBMAKES},$(MAKE) -C $(var) clean;)

dist:
	mkdir -p dist

phony_bypass:
%.make: dist phony_bypass
	$(MAKE) -C $*
	cp $*/dist/* dist/

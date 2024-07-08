CARGO ?= "cargo"
.PHONY: all clean

all: dist dist/backdoor-rs

clean:
	$(RM) -r dist target

dist/backdoor-rs: Cargo.toml src/main.rs
	$(CARGO) build --release
	mv target/release/backdoor dist/backdoor-rs

dist:
	mkdir -p dist

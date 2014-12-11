MELANGE=melange

all: build

.PHONY: build test

termbox.dylan: termbox.intr
	$(MELANGE) -Tc-ffi termbox.intr termbox.dylan

build: termbox.dylan
	dylan-compiler -build termbox

test: termbox.dylan
	dylan-compiler -build termbox-test-suite-app
	_build/bin/termbox-test-suite-app

clean:
	rm -f termbox.dylan
	rm -rf _build/bin/termbox*
	rm -rf _build/lib/*termbox*
	rm -rf _build/build/termbox*

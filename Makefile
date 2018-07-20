.PHONY: clean distclean test

DCC ?= dmd

clean:
	rm -rf build/*
distclean:
	rm -rf build/* .dub
testbin: dub.json $(wildcard source/* test/*)
	dub build -b unittest -c unittest -v --compiler ${DCC}

builddebug: dub.json $(wildcard source/*)
	dub build -b betterC-debug -v --compiler ${DCC}

test: testbin
	./build/test

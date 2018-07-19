.PHONY: clean distclean test

clean:
	rm -rf build/*
distclean:
	rm -rf build/* .dub
testbin: dub.json $(wildcard source/* test/*)
	dub build -b unittest -c unittest -v

builddebug: dub.json $(wildcard source/*)
	dub build -b betterC-debug -v

test: testbin
	./build/test

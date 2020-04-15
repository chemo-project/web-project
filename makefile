codefiles := $(patsubst %.coffee,%.js,$(wildcard *.coffee))
bin : src/index.html $(codefiles) src/style/* lib/*
	mkdir -p bin/lib
	cp -u src/index.html bin/index.html
	cp -u lib/* bin/lib/
	coffee -c -o bin src/code
	lessc src/style/main.less bin/style.css

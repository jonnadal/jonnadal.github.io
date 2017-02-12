.PHONY: all clean

all:
	git -C src/daft pull 2> /dev/null || git clone https://github.com/jonnadal/daft src/daft
	make -C src/daft/
	rsync -av src/daft/docs/* ./

clean:
	rm -rf dfy/ js/ src/

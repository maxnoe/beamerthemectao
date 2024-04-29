all: build/example.pdf


build/example.pdf: FORCE | build
	latexmk -norc -r latexmkrc example.tex

preview: FORCE | build
	latexmk -norc -r latexmkrc -pvc example.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

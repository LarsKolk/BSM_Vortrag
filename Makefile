all: build/Lepton-Universality.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/Lepton-Universality.pdf: FORCE | build
	latexmk $(texoptions) Lepton-Universality.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc Lepton-Universality.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build

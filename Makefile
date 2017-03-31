.PHONY: all clean

DIST_DIR=dist

all: thesis 

thesis:
	mkdir -p $(DIST_DIR)
	pdflatex --output-directory=$(DIST_DIR) $@
	bibtex $(DIST_DIR)/$@
	pdflatex --output-directory=$(DIST_DIR) $@

clean:
	rm -rf $(DIST_DIR)

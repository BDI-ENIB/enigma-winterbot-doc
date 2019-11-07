FILES=elec
TEX=xelatex

.PHONY: all clean

PDF_FILES=${foreach name,${FILES},${name}.pdf}
TEX_FILES=${foreach name,${FILES},${name}.tex}

all : ${PDF_FILES}

%.pdf : ${TEX_FILES}
	${TEX} $^

clean :
	rm -rf *.pdf
	rm -rf *.toc
	rm -rf *.out
	rm -rf *.log
	rm -rf *.idx
	rm -rf *.aux


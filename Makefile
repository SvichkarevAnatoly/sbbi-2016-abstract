SHELL := /bin/bash

texfile=abstract

read:	pdf clean_tmp
	evince ${texfile}.pdf &
	
pdf:	${texfile}.tex
	pdflatex ${texfile}.tex
	bibtex ${texfile}
	pdflatex ${texfile}.tex
	pdflatex ${texfile}.tex

clean_tmp:
	rm -f ${texfile}.{ps,log,aux,out,dvi,bbl,blg}

clean:
	rm -f ${texfile}.{ps,pdf,log,aux,out,dvi,bbl,blg}

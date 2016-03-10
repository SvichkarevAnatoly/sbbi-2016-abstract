SHELL := /bin/bash

main=abstract

read:	pdf clean_tmp
	evince ${main}.pdf &
	
pdf:	${main}.tex
	pdflatex ${main}.tex

clean_tmp:
	rm -f ${main}.{ps,log,aux,out,dvi,bbl,blg}

clean:
	rm -f ${main}.{ps,pdf,log,aux,out,dvi,bbl,blg}

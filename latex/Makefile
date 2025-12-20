TARGET = resume
OUT = resume.pdf

all:
	xelatex -interaction=nonstopmode -halt-on-error $(TARGET).tex
	xelatex -interaction=nonstopmode -halt-on-error $(TARGET).tex

clean:
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.gz *.nav *.snm *.toc *.vrb
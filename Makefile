all: resume.pdf coverletter.pdf

resume.pdf: resume.tex cv/*.tex russell.cls
	latexmk -xelatex resume.tex

coverletter.pdf: coverletter.tex russell.cls
	latexmk -xelatex coverletter.tex

clean:
	latexmk -CA

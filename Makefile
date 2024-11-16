all: resume_ko.pdf resume_en.pdf coverletter.pdf

resume: resume_ko.pdf resume_en.pdf

coverletter: coverletter.pdf

resume_ko.pdf: resume.tex cv/*.tex russell.cls
	latexmk -xelatex resume_ko.tex

resume_en.pdf: resume.tex cv/*.tex russell.cls
	latexmk -xelatex resume_en.tex

coverletter.pdf: coverletter.tex russell.cls
	latexmk -xelatex coverletter.tex

clean:
	latexmk -CA

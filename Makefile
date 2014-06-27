TEX = xelatex

.PHONY: cv view clean

cv: compiled/vita.pdf

view:
	open compiled/vita.pdf

compiled/vita.pdf: vita.tex
	latexmk  -xelatex -use-make vita.tex
	mv vita.pdf compiled/

clean:
	latexmk -CA
	rm compiled/*.pdf
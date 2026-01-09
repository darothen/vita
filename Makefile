
VITA_ROOT = vita
VITA = compiled/$(VITA_ROOT).pdf

RESUME_ROOT = resume
RESUME = compiled/$(RESUME_ROOT).pdf

all: $(VITA) $(RESUME)
resume: $(RESUME)
cv: $(VITA)

$(VITA): $(VITA_ROOT).tex
	arara -v $<
	mv $(VITA_ROOT).pdf $@

$(RESUME): $(RESUME_ROOT).tex
	arara -v $<
	mv $(RESUME_ROOT).pdf $@

.PHONY:
clean:
	rm -f $(VITA_ROOT).aux $(VITA_ROOT).log $(VITA_ROOT).out $(VITA_ROOT).toc $(VITA_ROOT).lof $(VITA_ROOT).lot $(VITA_ROOT).bbl $(VITA_ROOT).blg $(VITA_ROOT).fdb_latexmk $(VITA_ROOT).fls $(VITA_ROOT).synctex.gz $(VITA_ROOT).nav $(VITA_ROOT).snm $(VITA_ROOT).vrb $(VITA_ROOT).idx $(VITA_ROOT).ilg $(VITA_ROOT).ind $(VITA_ROOT).bcf $(VITA_ROOT).run.xml
	rm -f $(RESUME_ROOT).aux $(RESUME_ROOT).log $(RESUME_ROOT).out $(RESUME_ROOT).toc $(RESUME_ROOT).lof $(RESUME_ROOT).lot $(RESUME_ROOT).bbl $(RESUME_ROOT).blg $(RESUME_ROOT).fdb_latexmk $(RESUME_ROOT).fls $(RESUME_ROOT).synctex.gz $(RESUME_ROOT).nav $(RESUME_ROOT).snm $(RESUME_ROOT).vrb $(RESUME_ROOT).idx $(RESUME_ROOT).ilg $(RESUME_ROOT).ind $(RESUME_ROOT).bcf $(RESUME_ROOT).run.xml
.PHONY:
deepclean: clean
	$(RM) -f $(VITA) $(RESUME)


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
	rubber --clean $(VITA_ROOT).tex
	rubber --clean $(RESUME_ROOT).tex
.PHONY:
deepclean: clean
	$(RM) -f $(VITA) $(RESUME)

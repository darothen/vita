
VITA_ROOT = vita
VITA = compiled/$(VITA_ROOT).pdf

all: $(VITA)
cv: $(VITA)

$(VITA): $(VITA_ROOT).tex
	arara -v $<
	mv $(VITA_ROOT).pdf $@

.PHONY:
clean:
	rubber --clean $(VITA_ROOT).tex
.PHONY:
deepclean: clean
	$(RM) -f $(VITA)

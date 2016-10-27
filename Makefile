DEBUG = -v -d input/
BOOKS = hintjens-blog

EPUBS = $(addsuffix .epub, $(BOOKS))
all: $(EPUBS)

%.epub: %.recipe
	ebook-convert $< .epub $(DEBUG)

.PHONY: clean
clean: 
	rm -f $(EPUBS)

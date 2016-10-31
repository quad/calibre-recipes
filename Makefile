BOOKS = hintjens-blog

DEBUG_DIR = debug
DEBUG = -v -d $(DEBUG_DIR)

EPUBS = $(addsuffix .epub, $(BOOKS))
all: $(EPUBS)

%.epub: %.recipe
	ebook-convert $< .epub $(DEBUG)

.PHONY: clean
clean: 
	rm -f $(EPUBS)
	rm -rf $(DEBUG_DIR)

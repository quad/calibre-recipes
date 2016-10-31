BOOKS = hintjens-blog

DEBUG_DIR = debug
DEBUG = -v -d $(DEBUG_DIR)

EPUBS = $(addsuffix .epub, $(BOOKS))
MOBIS = $(addsuffix .mobi, $(BOOKS))
all: $(EPUBS) $(MOBIS)

%.epub: %.recipe
	ebook-convert $< .epub $(DEBUG)

%.mobi: %.recipe
	ebook-convert $< .mobi $(DEBUG)


.PHONY: clean
clean: 
	rm -f $(EPUBS) $(MOBIS)
	rm -rf $(DEBUG_DIR)


SRC_DIR=.
BUILD_DIR=html

MD_FILE = $(wildcard $(SRC_DIR)/*.md)
CSS = ../kouza.css
HTML=$(MD_FILE:.md=.html)

html: $(HTML) index

%.html: %.md
	pandoc $< -s -c $(CSS)  -o $(BUILD_DIR)/$@

index: index.html
	cp index.html $(BUILD_DIR)/index.html

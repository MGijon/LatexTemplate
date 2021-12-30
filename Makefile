.DEFAULT_GOAL := default

# Compile the document
build:
	docker build -t build .

# Option selected by default, compile the document
default: build
	docker run --mount type=bind,source=$(PWD),destination=/build build

# Delete only the .pdf type files
clean:
	rm *.pdf

# Delete all files reseulted from compilation
delete-everything:
	rm *.pdf *.toc *.log

#
pdf:
	pdflatex *.tex && pdflatex *.tex

#
stamp:
	./scripts/stamp.sh

#
watch:
	find . | grep -v git | grep -e 'tex$$' | entr -c make

#
count:
	wc -w chapters/*.tex

#
update:
	./scripts/update.sh

#
html:
	./scripts/html.sh

#
epub:
	./scripts/epub.sh

#
reading-time-mins:
	echo $$(($$(cat $$(find . | grep -v .git | grep -e 'tex$$') | wc | awk '{print $$2}') / 200))

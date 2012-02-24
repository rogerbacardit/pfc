all: html open

html: install-theme
	git-scribe gen html

open:
	open output/book.html

gen-all: install-theme
	git-scribe gen all

install-theme:
	compass compile
	mkdir -p ~/.asciidoc/themes/scribe
	cp stylesheets/scribe.css ~/.asciidoc/themes/scribe/scribe.css

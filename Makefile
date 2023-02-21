build: pdf out/README.html

pdf: main.tex out
	pdflatex --shell-escape --output-directory=out $<

out/README.html: README.adoc
	asciidoctor -D out $<

out:
	mkdir -p out

clean:
	rm -rf out

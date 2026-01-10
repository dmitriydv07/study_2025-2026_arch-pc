all: report.pdf report.docx

_output/report.pdf _output/report.docx: report.qmd _quarto.yml bib/cite.bib
	quarto render

report.pdf: _output/report.pdf
	cp -f $< $@

report.docx: _output/report.docx
	cp -f $< $@

clean:
	-rm report.docx report.pdf *~

cleanall: clean
	-rm -rf _output .quarto

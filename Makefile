.PHONY: default watch

default:
	@echo "Building PDF"
	xelatex -shell-escape -halt-on-error report.tex

watch:
	@echo "Watching for changes"
	fswatch -o -l 2 report.tex title.tex body.tex | xargs -n1 -I{} make

optimize:
	@echo "Optimizing report.pdf"
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile=report-opt.pdf report.pdf

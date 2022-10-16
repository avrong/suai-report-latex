# SUAI/GUAP LaTeX Report Template

## Usage

Make sure you have installed [TeX Live](https://www.tug.org/texlive/) and [Pygments](https://pygments.org/).

The default fonts for document are `Times New Roman`, `Arial` and `Fira Code`. They should be installed or changed to desired ones in `report.tex`. Same applies to `images/` directory where images should be placed by default.

Make is recommended, however you can run commands from `Makefile` manually.

```bash
make          # Build PDF into report.pdf using xelatex
make watch    # Run build on source file changes (requires fswatch)
make optimize # Optimize report.pdf into report-opt.pdf (requires ghostscript)
```

## Editing

The report is separated into three parts: report itself, title and body.
Images by default should be placed into `images/` directory and imported relatively from it.

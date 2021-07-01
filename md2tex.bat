:: pandoc-crossref is not included in Pandoc and must be downloaded here:
:: https://github.com/lierdakil/pandoc-crossref

:: If the manuscript includes separate .md files with trailing numbers (1_introduction, 2_methods, etc.), you can concatenate these files automatically, pipe the result to a new .md file and then use Pandoc on the concatenated file:
:: cat [0-9]*.md > draft.md

:: Convert the markdown files to a Latex file. Adapt the file names of the .md files accordingly.
pandoc --from=markdown+raw_tex+citations 01_introduction.md 02_methods.md -F pandoc-crossref --number-sections --natbib  -o draft.tex

:: Convert the bibliography that I use with Zettlr from .json the .bib, which can then be processed with BibTeX. Adapt the file names of your bibliography accordingly.
pandoc -f csljson C:\Users\nbusch\Dropbox\Zettelkasten\.Bib\my_better_library.json -t bibtex -o mybib.bib

pdflatex article_template
bibtex article_template
pdflatex article_template
pdflatex article_template

::xelatex article_template
::bibtex article_template
::xelatex article_template
::xelatex article_template



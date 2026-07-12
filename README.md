# Word-ZoteroToLatex
A short script to translate Word files with Sources from the Zotero Plugin to Latex format. Useful for writing scientific papers that require latex submissions, or for uploading latex files to preprint repositories.

# Requirements
1)	Microsoft Word https://www.microsoft.com/de-ch/microsoft-365/word
2)	Zotero with Word Plugin https://www.zotero.org/
3)	Any latex reader to open the resulting .tex output, e.g. texmaker https://www.xm1math.net/texmaker/

# Setup
1)	Install BetterBibtex for Zotero: https://retorque.re/zotero-better-bibtex/installation/index.html
2)	Install this CSL style for Zotero Word Plugin: https://retorque.re/zotero-better-bibtex/citing/migrating/better-bibtex-citekeys.csl
3)	Install pandoc https://pandoc.org/installing.html

# Run Instructions 
1)	Create references.bib using the Zotero Export Option “BetterBibTex” and put it in the same folder as the docx+citations2latex.lua file.
2)  Create a copy of the Word file you want to translate to latex. 
3)  In the Word Zotero Tab / Document Preferences / select “Better BibTeX Citekeys” citation style and update your citations and bibliography. Rename the resulting document into “input.docx” and put it in the same folder.
4)  Use the following command in terminal (in windows: right click on folder / open in terminal):
```
pandoc input.docx -f docx+citations -t latex --lua-filter=docx+citations2latex.lua -o out-put.tex
```
# Troubleshooting
If permissions are denied, make sure to close the input.docx or any other document used in the process. If it still doesn't work, make sure you have administrator rights. 

# Notes
The program was only tested on Office 365 and Windows so far, not on Mac / Linux. 

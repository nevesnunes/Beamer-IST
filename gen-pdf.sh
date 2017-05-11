#!/bin/bash

BASE=main
REPORT="$BASE.tex"

# compile once
pdflatex "$REPORT"

# compile the references
bibtex "$BASE"  

# compile glossaries
makeglossaries "$BASE"  

# compile again to attach the compiled references
pdflatex "$REPORT"

# compile again just to make the ref numbers appear accordingly
pdflatex "$REPORT"

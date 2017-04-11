# Build script for Aaron Crandall's CV
# This is such a hack

pdflatex -output-directory=tmp/ aaron.crandall-cv 
pdflatex -output-directory=tmp/ aaron.crandall-cv 
bibtex dissertation
bibtex journal
bibtex conf
bibtex book
bibtex other
pdflatex -output-directory=tmp/ aaron.crandall-cv 
pdflatex -output-directory=tmp/ aaron.crandall-cv 

mv tmp/aaron.crandall-cv.pdf ../Aaron.Crandall-cv.pdf
rm tmp/*

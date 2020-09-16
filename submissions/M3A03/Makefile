.PHONY: all clean

all: oving3.pdf

# Using the Eisvogel template, will fail without it
tekst.pdf:
	pandoc 03_PDE.md -o tekst.pdf --from markdown --template eisvogel --listings

# Remaining PDFs are exported from Matlab
oving3.pdf: tekst.pdf
	pdftk tekst.pdf CP*.pdf cat output oving3.pdf

clean:
	rm -f oving3.pdf tekst.pdf

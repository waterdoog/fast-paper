.PHONY: all clean nine four
all: main.pdf

main.pdf: main.tex refs.bib $(wildcard sections/*.tex)
	latexmk -pdf -interaction=nonstopmode main.tex

clean:
	latexmk -C

# Reminder targets — see README for what to comment out.
nine: ; @echo "default build: all \\input lines active"
four: ; @echo "comment out 04-seeding, 09-related detail, and appendix in main.tex"

bib="bibliography/biblio.bib"
csl="styles/pnas.csl"

for f in Introduction.tex Results.tex Discussion.tex Methods.tex; do
    pandoc -o ${f%.*}.doc $f --bibliography $bib --csl $csl
done

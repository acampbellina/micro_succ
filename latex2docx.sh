bib="bibliography/biblio.bib"
csl="pnas.csl"

for f in Significance.tex Abstract.tex Introduction.tex Results.tex Discussion.tex Methods.tex Supplemental_notes.tex; do
    pandoc -o ${f%.*}.doc $f --bibliography $bib --csl $csl
done

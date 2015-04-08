bib="bibliography/biblio.bib"
bib2="bibliography/biblio_x.bib"
csl="pnas.csl"

#for f in Significance.tex Abstract.tex Introduction.tex Results.tex Discussion.tex Methods.tex Supplemental_notes.tex; do
#    pandoc -o ${f%.*}.doc $f --bibliography $bib --csl $csl
#done

cat Significance.tex Abstract.tex  Introduction.tex Results.tex Discussion.tex Methods.tex \
    | pandoc -o manuscript.doc -r latex --bibliography $bib --csl $csl

cat supplemental.tex \
    | grep -v "\input{supp_figs.tex}" \
    | grep -v "beginsupplement" \
    | pandoc -o supplemental.doc -r latex --bibliography $bib2 --csl $csl

#sed -i 's/\[fig:ord<sub>h<\/sub>eavy\]/1/g' $1.doc
#sed  -i  's/\[fig:l2fc\]/2/g' $1.doc
#sed  -i  's/\[fig:trees\]/3/g' $1.doc
#sed -i 's/\[fig:scatter<sub>h<\/sub>eavy\]/4/g' $1.doc
#sed  -i  's/\[fig:ordination\]/S1/g' $1.doc
#sed  -i  's/\[fig:2v4\]/S2/g' $1.doc
#sed -i 's/\[fig:rspndr<sub>d<\/sub>ist\]/S3/g' $1.doc
#sed -i 's/\[fig:study<sub>p<\/sub>hy<sub>d<\/sub>ist\]/S4/g' $1.doc
#sed  -i  's/\[fig:rarefaction\]/S5/g' $1.doc
#sed -i 's/\[tab:LTP<sub>b<\/sub>last\]/S1/g' $1.doc

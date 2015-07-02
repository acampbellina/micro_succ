bib="bibliography/biblio.bib"
bib2="bibliography/biblio_x.bib"
csl="pnas.csl"

bash captions.sh

cat Abstract.tex Significance.tex Introduction.tex Results.tex Discussion.tex Methods.tex captions.tex supp_captions.tex \
    | pandoc -o manuscript.doc -r latex --bibliography $bib --csl $csl

cat supplemental.tex supp_captions.tex \
    | grep -v "\input{supp_figs.tex}" \
    | grep -v "beginsupplement" \
    | pandoc -o supplemental.doc -r latex --bibliography $bib2 --csl $csl

sed -i 's/\[fig:ord\]/1/g' manuscript.doc
sed -i 's/\[fig:l2fc\]/2/g' manuscript.doc
sed -i 's/\[fig:shift\]/3/g' manuscript.doc
sed -i 's/\[fig:genspec\]/4/g' manuscript.doc
sed -i 's/\[fig:example\]/5/g' manuscript.doc
sed -i 's/\[fig:tiledtree\]/6/g' manuscript.doc

sed -i 's/\[fig:13C\]/S1/g' manuscript.doc
sed -i 's/\[fig:setup\]/S2/g' manuscript.doc
sed -i 's/\[fig:rspndr<sub>c<\/sub>ount\]/S3/g' manuscript.doc
sed -i 's/\[fig:bulk<sub>o<\/sub>rd\]/S4/g' manuscript.doc
sed -i 's/\[fig:time\]/S5/g' manuscript.doc
sed -i 's/\[fig:time<sub>c<\/sub>lass\]/S6/g' manuscript.doc
sed -i 's/\[fig:babund\]/S7/g' manuscript.doc
sed -i 's/\[fig:xyl<sub>c<\/sub>ount\]/S8/g' manuscript.doc
sed -i 's/\[fig:c1\]/S9/g' manuscript.doc
sed -i 's/\[fig:copy\]/S10/g' manuscript.doc
sed -i 's/\[fig:foodweb\]/S11/g' manuscript.doc

sed -i 's/\[fig:ord\]/1/g' supplemental.doc
sed -i 's/\[fig:l2fc\]/2/g' supplemental.doc
sed -i 's/\[fig:shift\]/3/g' supplemental.doc
sed -i 's/\[fig:genspec\]/4/g' supplemental.doc

sed -i 's/\[fig:13C\]/S1/g' supplemental.doc
sed -i 's/\[fig:setup\]/S2/g' supplemental.doc
sed -i 's/\[fig:rspndr<sub>c<\/sub>ount\]/S3/g' supplemental.doc
sed -i 's/\[fig:bulk<sub>o<\/sub>rd\]/S4/g' supplemental.doc
sed -i 's/\[fig:time\]/S5/g' supplemental.doc
sed -i 's/\[fig:time<sub>c<\/sub>lass\]/S6/g' supplemental.doc
sed -i 's/\[fig:babund\]/S7/g' supplemental.doc
sed -i 's/\[fig:xyl<sub>c<\/sub>ount\]/S8/g' supplemental.doc
sed -i 's/\[fig:tiledtree\]/S9/g' supplemental.doc
sed -i 's/\[fig:c1\]/S10/g' supplemental.doc
sed -i 's/\[fig:copy\]/S11/g' supplemental.doc
sed -i 's/\[fig:foodweb\]/S12/g' supplemental.doc

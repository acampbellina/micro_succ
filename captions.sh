echo '\subsection{Figure 1}' > captions.tex
cat figures/ordination_all1/caption.tex | sed 's// /g' >> captions.tex
echo '\subsection{Figure 2}' >> captions.tex
cat figures/l2fc_fig1/caption.tex | sed 's// /g' >> captions.tex
echo '\subsection{Figure 3}' >> captions.tex
cat figures/tiled_tree/caption.tex | sed 's// /g' >> captions.tex
echo '\subsection{Figure 4}' >> captions.tex
cat figures/xylose_rspndr_bar/caption.tex | sed 's// /g' >> captions.tex
echo '\subsection{Figure 5}' >> captions.tex
cat figures/shift_and_rabund3/caption.tex | sed 's// /g' >> captions.tex

echo '\subsection{Figure S1}' > supp_captions.tex
cat figures/20150320methods_conceptual/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S2}' >> supp_captions.tex
cat figures/13C_chart/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S3}' >> supp_captions.tex
cat figures/bulk_ordination/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S4}' >> supp_captions.tex
cat figures/l2fc_time/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S5}' >> supp_captions.tex
cat figures/abndVtime_class/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S6}' >> supp_captions.tex
cat figures/bulk_phylum_rspndr_abund/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S7}' >> supp_captions.tex
cat figures/generalist_specialist/caption.tex | sed 's// /g' >> captions.tex
echo '\subsection{Figure S8}' >> supp_captions.tex
cat figures/all_rspndr_bar/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S9}' >> supp_captions.tex
#cat figures/conceptual1/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S10}' >> supp_captions.tex
cat figures/copy_number/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S11}' >> supp_captions.tex
cat figures/conceptual1/caption.tex | sed 's// /g' >> supp_captions.tex
echo '\subsection{Figure S12}' >> supp_captions.tex
cat figures/conceptual3/caption.tex | sed 's// /g' >> supp_captions.tex

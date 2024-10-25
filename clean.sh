#!/bin/bash
# Per cancellare file ausiliari
files=(

    "./Candidatura/DomandeProponenti/Domande_Proponenti.tex"
    
    "./Candidatura/Lettera_di_Presentazione.tex"
    "./Candidatura/Valutazione_Capitolati.tex"
    "./Candidatura/analisi_costi_assunzione_impegni.tex"

    "./Candidatura/verbali_esterni/verbale_24-10-18_ergon.tex"
    "./Candidatura/verbali_esterni/verbale_24-10-17_azzurodigitale.tex"
    "./Candidatura/verbali_esterni/verbale_24-10-18_sanmarco.tex"

    "./Candidatura/verbali_interni/verbale_24-10-18_v1.0.tex"
    "./Candidatura/verbali_interni/verbale_24-10-15_v1.0.tex"
    "./Candidatura/verbali_interni/verbale_24-10-25_v0.1.tex"

    "./templateC7C/template.tex"
    "./templateC7C/slide.tex"

)


initial_path=$(pwd)

for file in ${files[@]}; do
    if cd $(dirname $file); then
    rm -f $(basename $file .tex).log $(basename $file .tex).aux $(basename $file .tex).out $(basename $file .tex).toc 
    # rm -f $(basename $file .tex).pdf
    fi
    cd $initial_path
done
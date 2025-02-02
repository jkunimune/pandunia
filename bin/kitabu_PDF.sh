fa_pandoc() {
    pandoc $1/pan.md -s -o $1/pan.pdf --pdf-engine=/usr/bin/xelatex -V mainfont="DejaVu Serif" -V monofont="DejaVu Sans Mono" -V CJKmainfont="Noto Sans CJK SC" -V devanagarifont="Noto Sans Devanagari"
    sed 's/\/home\/risto\/pandunia\/html/http:\/\/www.pandunia.info/g' -i $1/pan.md
}

fa_pan_md() {
    echo
    echo "kitabu la $1 PDF dokumen"
    cd $1
    cat 000_dake.md 100_baze_kanun.md 102_ABC.md 103_logatipe.md 104_viseloga.md 105_namloga.md 106_nomer.md 107_modeloga.md 108_karmaloga.md 109_jumla_bina.md 110_loga_bina.md 201_shula.md > pan.md

    #di nici kitabe ya 'unicode' harfe e simbol, de 'pandoc' no abla kitaba.
    #101_dunia_loga.md 200_baze_jumla.md

    # uze la loka di grafi
    sed 's/http:\/\/www.pandunia.info/\/home\/risto\/pandunia\/html/g' -i pan.md
    cd ..
}

fa_pan_md english
fa_pandoc english
fa_pan_md espanya
fa_pandoc espanya

# uze la pake:
#sudo apt install pandoc
#sudo apt install pdflatex
#sudo apt-get install texlive-latex-base
#sudo apt-get install texlive-fonts-recommended
#sudo apt-get install texlive-fonts-extra
#sudo apt-get install texlive-latex-extra
#sudo apt-get install texlive-xetex


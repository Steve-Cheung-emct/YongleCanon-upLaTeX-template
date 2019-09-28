chcp 65001 
latexmk -c
uplatex main
uplatex main
dvipdfmx  main.dvi

del	*.aux	*.bak	*.log	*.bbl	*.blg	*.thm	*.toc	*.out	*.lof	*.lol	*.lot	*.fdb_latexmk	*.synctex.gz	*.ent	*.dvi	/s

#PAUSE

exit

uplatex main
ptex2pdf -l -u -ot "-kanji=utf8 "  -od "-p B5 " main


ps2pdf14 -dPDFA -dPDFACompatibilityPolicy=1 -sProcessColorModel=DeviceCMYK main.pdf main-pdfa.pdf
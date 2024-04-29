$out_dir = "build";

# use lualatex
$pdf_mode = 4;

# lualatex options
$lualatex = "lualatex -interaction=\${INTERACTION:-nonstopmode} -halt-on-error --shell-escape %O %S";

# ignore lualatex font cache, which leads to latexmk thinking it needs
$hash_calc_ignore_pattern{'luc'}='^';

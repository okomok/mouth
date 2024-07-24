#!/usr/bin/env perl

my $out_dir_ = 'wsl-out/mygit';

my $texfot = 'texfot --quiet ';
my $latex_option = ' %O -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error -shell-escape %S ';

$latex      = $texfot . "uplatex"  . $latex_option . " -kanji=utf8 -no-guess-input-enc";
$pdflatex   = $texfot . "pdflatex" . $latex_option;
$lualatex   = $texfot . "lualatex" . $latex_option;
$xelatex    = $texfot . "xelatex"  . $latex_option;

$biber      = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex     = 'upbibtex %O %B';
$makeindex  = 'upmendex %O -o %D %S';

$dvipdf     = 'dvipdfmx %O -o %D %S';
$dvips      = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf     = 'ps2pdf %O %S %D';

$pdf_mode           = 3;# generated through a dvi file.
$quote_filenames    = 0;# disables quoting.
$out_dir            = "/mnt/c/${out_dir_}";# must be in Windows.
$pdf_update_method  = 1;# does nothing.
$pdf_previewer      = '/mnt/c/Program\ Files/SumatraPDF/SumatraPDF.exe' . " C:/${out_dir_}/%R.pdf";

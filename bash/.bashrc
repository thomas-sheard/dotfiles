#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# platform

QT_QPA_PLATFORM=wayland

# aliases

# borked
#alias devserver='cd /home/thomas/Desktop/programming/html/website/contents/ && firefox localhost:8000 && python -m http.server'

alias btui='bluetuith'

# generic functions

deploy() {
  while true; do
    echo "REIMPLEMENT THIS: DO NOT DELETE THE REMOTE FROM ROOT!"
    sleep 0.1
  done
}

#pushdot() {
#  
#}
#
#pulldot() {
#
#}

# R functions

reRun() {
  Rscript $1
  zathura Rplots.pdf
}

# latex functions

compile() {
  FILE=`find . -maxdepth 1 -name "*.tex"`
  NAME=${FILE%.*}
  pdflatex "$NAME.tex"
  biber "$NAME.bcf"
  makeindex "$NAME.idx"
  pdflatex "$NAME.tex"
  pdflatex "$NAME.tex"
  zathura "$NAME.pdf" &
}

recompile() {
#  FILE=`find . -name "*.tex"`
#  NAME=${FILE%.*}
  pdflatex "$NAME.tex"
  biber "$NAME.bcf"
  makeindex "$NAME.idx"
  pdflatex "$NAME.tex"
  pdflatex "$NAME.tex"
}

xecompile() {
  FILE=`find . -name "*.tex"`
  NAME=${FILE%.*}
  xelatex "$NAME.tex"
  biber "$NAME.bcf"
  makeindex "$NAME.idx"
  xelatex "$NAME.tex"
  xelatex "$NAME.tex"
  zathura "$NAME.pdf"
}

hxecompile() {
  FILE=`find . -name "main.tex"`
  NAME=${FILE%.*}
  xelatex "$NAME.tex"
  biber "$NAME.bcf"
  makeindex "$NAME.idx"
  xelatex "$NAME.tex"
  xelatex "$NAME.tex"
  zathura "$NAME.pdf"
}

texplate() {
  IFS='/' read -ra DIR <<< $(pwd)
  pdir="${DIR[-1]}"
  cp ~/Desktop/programming/latex/templates/assignment/assignment.tex $pdir.tex
}

# PATH

#export TEXMFHOME=$HOME/.local/texmf

#. "$HOME/.cargo/env"

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

hugonew() {
    local root_dir
    local current_dir
    local relative_path

    root_dir=$(git rev-parse --show-toplevel 2>/dev/null)
    
    if [ -z "$root_dir" ] || { [ ! -f "$root_dir/hugo.toml" ] && [ ! -f "$root_dir/config.toml" ]; }; then
        echo "Error: Hugo project root (with config file) not found via Git."
        return 1
    fi

    current_dir=$(pwd)

    if [[ "$current_dir" != *"/content"* ]]; then
        echo "Error: You must be inside the 'content' directory to use this shortcut."
        return 1
    fi

    relative_path="${current_dir##*/content/}"

    if [ "$current_dir" = "$root_dir/content" ]; then
        hugo new --source "$root_dir" "content/$1"
    else
        hugo new --source "$root_dir" "content/$relative_path/$1"
    fi
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

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

# localhost 1313
alias devserver='cd /home/thomas/Desktop/programming/html/website/ && hugo server -D'
alias btui='bluetuith'
alias cdot='cd ~/dotfiles'
alias bashrc='source ~/.bashrc'

# generic functions

mkcd() {
  mkdir $1
  cd "$_"
}

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

# typst functions

tcompile() {
  FILE=`find . -maxdepth 1 -name "*.typ"`
  NAME=${FILE%.*}
  typst compile "$NAME.typ" output.pdf
  #zathura output.pdf &
}

typlate() {
  cp ~/Desktop/programming/typst/templates/assignment/main.typ .
}

typwrite() {
  # almost always main.typ but generality doesn't hurt
  FILE=`find . -maxdepth 1 -name "*.typ"`
  NAME=${FILE%.*}
  zathura output.pdf & #sleep 0.2; swaymsg move left
  typst watch "$NAME.typ" output.pdf
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
#  IFS='/' read -ra DIR <<< $(pwd)
#  pdir="${DIR[-1]}"
#  cp ~/Desktop/programming/latex/templates/assignment/assignment.tex $pdir.tex
  cp ~/Desktop/programming/latex/templates/assignment/assignment.tex ./main.tex
}

# PATH

#export TEXMFHOME=$HOME/.local/texmf

export PATH="$HOME/dotfiles/bin:$PATH"

#. "$HOME/.cargo/env"

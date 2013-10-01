# Change Title
function title {
  printf "\033]0;%s\007" "$1"
}

# Tell Style
tstyle() {
 STYLE=${1:-Default}
 osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$STYLE\""
}

# Handy default styles
alias light='tstyle "Solarized light"'
alias dark='tstyle "Solarized dark"'

reload() {
  source ~/.bashrc
}

j() {
  mkdir -p $1 && cd $1
}

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# increase HISTSIZE and HISTFILESIZE from 500 lines
export HISTSIZE=10000
export HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
    xterm-256color) color_prompt=yes;;
esac

if [ "$color_prompt" = yes ]; then
    export PS1='\[\033[01;32m\]\u\[\033[01;34m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]'

#    if [[ `declare -F __git_ps1` ]]; then
    export PS1=$PS1'\[\033[01;32m\]$(__git_ps1)\[\033[00m\]'
#    fi

    export PS1=$PS1'\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

#enable color support
export CLICOLOR=color_prompt
# also add handy aliases
if [ "$color_prompt" = yes ]; then
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
unset color_prompt force_color_prompt

# add $HOME/bin to $PATH
export PATH=~/bin:$PATH
export PATH=/usr/local/bin/:$PATH

# Function definitions.
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Load Z
. `brew --prefix`/etc/profile.d/z.sh

# Load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# git hub
eval "$(hub alias -s)"

# NPM bins
PATH=$PATH:/usr/local/share/npm/bin/

# Go bins
GOPATH="$HOME/.go"
PATH=$HOME/.go/bin:$PATH

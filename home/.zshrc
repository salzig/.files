
autoload -Uz compinit && compinit
source <(kubectl completion zsh)

# We don't want duplicates
setopt HIST_IGNORE_ALL_DUPS

# allow comments in interactive shells
setopt INTERACTIVE_COMMENTS

export PATH="${HOME}/.bin/:${PATH}"

. /usr/local/opt/asdf/libexec/asdf.sh
. /usr/local/etc/profile.d/z.sh

source ~/.bash_aliases
source ~/.bash_functions
source ~/.bash_variables

# strangeness needed for GPG (&SOPS)
#äexport GPG_TTY=$(tty)

eval "$(starship init zsh)"

date "+%H:%M:%S"|toilet --gay -f bigmono12.tlf

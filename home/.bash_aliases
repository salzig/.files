# Shell Aliases
alias l="ls -lh"
alias ll="l -a"
alias preview="qlmanage 2>/dev/null -p"
alias watch=viddy

# App Aliases
alias mou="open -a mou"
alias look="nohup qlmanage -p"
#alias grep="ack"
alias big="figlet"
alias git="LANG=en_US.UTF-8 git"
alias e="subl ."

# Lolcommit init
alias lolit='ASDF_RUBY_VERSION=2.6.3 lolcommits --enable --fork --stealth --delay=4'

# lazy docker
alias dm='docker-machine'
alias dc='docker-compose'
alias ds='docker-swarm'
alias d='docker'
alias k='kubectl'
alias c='kubectx'

# lazy ruby
alias be='bundle exec'
alias ber='bundle exec rails'

# lazy ssh
alias sshpassword='ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no'

# Typos
alias gi='cowsay -f eyes'
alias ghit='gti'

# fun
alias computer,='sudo '
alias bell='echo -ne "\a"'
alias fertig='notification "Fertig"; say "Fertig"'

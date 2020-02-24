if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

echo
date +"%A, %d. %B" | toilet -t -f future --metal
echo

echo "Source: bashrc"
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Function definitions.
echo "Source: bash_functions"
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Alias definitions.
echo "Source: bash_aliases"
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# nvm
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into a shell session *as a function*

# nodejs
#PATH=$PATH:$HOME/.nvm/v0.10.26/bin/node

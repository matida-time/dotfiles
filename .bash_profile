if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# homebrew
export PATH=/usr/local/bin:$PATH

# nvm
#[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load NVM into a shell session *as a function*

# nodejs
#PATH=$PATH:$HOME/.nvm/v0.10.26/bin/node

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

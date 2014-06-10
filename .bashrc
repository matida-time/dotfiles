#case "${OSTYPE}" in
#darwin*)
#  alias ll='ls -laG'
#  ;;
#linux*)
#  alias ll='ls -la --color=auto'
#  ;;
#esac

alias ll='ls -la --color=auto'
alias vi='vim'
alias svn='colorsvn'
alias grep='grep --exclude=*.svn* --color=auto'
alias rake='bundle exec rake'
alias rails='bundle exec rails'
alias zenki_gree='cd /data/workspace/zenki-gree/trunk_git'
alias zenki_mixi='cd /data/workspace/zenki-mixi/trunk_git'
alias zenki_mbga='cd /data/workspace/zenki-mbga/trunk_git'

export TERM=xterm-256color

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

LANG=ja_JP.UTF-8
case $LANG in
  ja_JP.UTF-8) JLESSCHARSET=utf-8 ; LV=-Ou8 ;;
  ja_JP.*) JLESSCHARSET=japanese-euc ; LV=-Oej ;;
      *) JLESSCHARSET=latin1 ; LV=-Al1 ;;
esac
export LANG JLESSCHARSET LV
export SVN_EDITOR=vim
export PATH="/usr/local/rbenv/shims:$PATH"

#PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting

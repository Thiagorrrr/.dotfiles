export EDITOR='subl -w'export PATH=/usr/bin:$PATH
export PATH=$PATH:/usr/local/mysql/bin
export PATH="/usr/local/bin:$PATH"

if [ -f ~/.bash_git ]; then
  . ~/.bash_git
fi

if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

if [ -f ~/.alias ]; then
  . ~/.alias
fi



[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

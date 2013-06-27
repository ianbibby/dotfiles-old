ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ianbibby"

alias sz='source ~/.zshrc'
alias ez='vi ~/.zshrc'

HISTSIZE=10000
setopt NO_CASE_GLOB
setopt EXTENDED_GLOB
setopt NO_HUP
setopt EXTENDED_HISTORY

plugins=(git bundler brew gem)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/.rbenv/bin:$PATH"

# Use Postgres.app binaries if applicable
if [[ -e /Applications/Postgres.app ]]; then
  export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

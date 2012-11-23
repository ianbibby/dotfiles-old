ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ianbibby"

alias zshc='vim $HOME/.zshrc'

plugins=(git bundler brew gem)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PROMPT="%m %2c %# "
# Add paths
export PATH="$HOME/.rbenv/bin:/usr/local/bin:$PATH"

# Colorize terminal
#export TERM='xterm-color'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

setopt NO_CASE_GLOB
setopt EXTENDED_GLOB
setopt NO_HUP
setopt EXTENDED_HISTORY

# Use VIM as the editor
export EDITOR=/usr/bin/vim

# History
export HISTSIZE=10000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Aliases
alias ez="$EDITOR $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias code="cd $HOME/code"
alias tailf="tail -f"
alias ls='ls -G'
alias ll='ls -lG'

# Use Postgres.app binaries if applicable
if [[ -e /Applications/Postgres.app ]]; then
  export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

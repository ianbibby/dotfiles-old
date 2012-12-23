# Customize to your needs...
export PATH="$HOME/.rbenv/bin:$PATH"

# Use Postgres.app binaries if applicable
if [[ -e /Applications/Postgres.app ]]; then
  export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

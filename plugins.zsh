# Plugin Manager [mattmc3/zsh_unplugged]

# Plugins folder
ZPLUGINDIR=${ZPLUGINDIR:-${ZDOTDIR:-$HOME/.config/zsh}/plugins}

# get zsh_unplugged and store it with other plugins 
if [[ ! -d $ZPLUGINDIR/zsh_unplugged ]]; then
  echo "Installing Plugins..."
  git clone --quiet https://github.com/mattmc3/zsh_unplugged $ZPLUGINDIR/zsh_unplugged
fi
source $ZPLUGINDIR/zsh_unplugged/zsh_unplugged.zsh

# Plugin list (in load preferance order)
repos=(
  zsh-users/zsh-completions
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-autosuggestions
)

# Load Plugins
plugin-load $repos

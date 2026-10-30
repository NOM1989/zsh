# zmodload zsh/zprof
# Nick's Modular Zsh Config
ZSHCONF=${ZSHCONF:-${ZDOTDIR:-$HOME/.config/zsh}}

HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=$HISTSIZE

setopt interactivecomments # Ignore lines prefixed with '#'.
setopt hist_ignore_space # Prevent history entry if preceded with a space
setopt hist_ignore_dups # Ignore duplicates in history.
setopt sharehistory # Share history across terminals

# Source environment variables (if they exist)
# Do this early incase things use them
[ -f $ZSHCONF/.env ] && source $ZSHCONF/.env

# Set editors
export EDITOR="vi"
export VISUAL="vi"

# Completions (preliminary)
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

typeset -a sources
sources+="plugins.zsh" # Loads plugins asyncronously
sources+="keybinds.zsh"
sources+="languages.zsh"
sources+="newt.zsh"
sources+="aliases/core.zsh"
sources+="aliases/.env"

# Local aliases
for f in $ZSHCONF/aliases/local_*.zsh(N); do
  sources+="${f#$ZSHCONF/}"
done

# Source files if they exist
foreach file (`echo $sources`)
  if [[ -f "$ZSHCONF/$file" ]]; then
    source "$ZSHCONF/$file"
  fi
end

# Eval if installed
hash zoxide 2>/dev/null && eval "$(zoxide init zsh)"
hash starship 2>/dev/null && eval "$(starship init zsh)"

# zprof

export PATH="$HOME/.local/bin:$PATH"

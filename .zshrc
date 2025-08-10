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
export VISUAL="nvim"

# Completions (preliminary)
autoload -Uz compinit
compinit

typeset -a sources
sources+="plugins.zsh" # Loads plugins asyncronously
sources+="keybinds.zsh"
sources+="languages.zsh"
sources+="aliases/core.zsh"
sources+="aliases/local_ThinkPad.zsh"
sources+="aliases/.env"

# Source files if they exist
foreach file (`echo $sources`)
  if [[ -f "$ZSHCONF/$file" ]]; then
    source "$ZSHCONF/$file"
  fi
end

# Eval if installed
hash zoxide 2>/dev/null && eval "$(zoxide init zsh)"
hash starship 2>/dev/null && eval "$(starship init zsh)"
hash thefuck 2>/dev/null && eval "$(thefuck --alias)"

# zprof

# To-Do
# echo "To Dos!"

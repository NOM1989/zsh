# Core aliases I expect everywhere, alias fails quietly if a command isnt installed
alias mv='mv -v'
alias cls='clear'
alias n='nvim'
# alias n='neovide --no-fork'
alias b='btop'
alias cd..='cd ..'
alias cd='z'
# cd and open nvim, defined as a func so not highlighted red in term
cn() {
    z "$1" && nvim .
}
alias wifi='nmcli dev wifi list'

# Git
alias g='git status '
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit -m '
alias gac='git add . && git commit -m '
alias gd='git diff'
alias gpl='git pull'
alias gp='git push'
alias gco='git checkout '

# ls with icons
alias l='eza --icons --group-directories-first'
alias ls='eza --icons --group-directories-first'
alias ll='eza --icons -l --group-directories-first'
alias la='eza --icons -a --group-directories-first'
alias lt='eza --icons -T'
alias lta='eza --icons -Ta'

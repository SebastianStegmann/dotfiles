export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

accept-line() {
    if [[ -z $BUFFER ]]; then
        BUFFER="nvim ."
        zle .accept-line
    else
        zle .accept-line
    fi
}

source ~/.profile

zle -N accept-line
bindkey '^M' accept-line

eval "$(zoxide init zsh)"
alias ll='eza -laF --git'
alias ..='cd ..'
alias ...='cd ../..'
alias e='[ -z \$BUFFER ] && nvim || clear'
alias .='pwd'
alias acp='function _acp() { git add . && git commit -m "$1" && git push }; _acp'
alias ac='function _ac() { git add . && git commit -m "$1" }; _ac'

# alias merge-to-production='git checkout production && git merge main && git push origin production && git checkout main'


accept-line() {
    if [[ -z $BUFFER ]]; then
        BUFFER="yazi ."
        zle .accept-line
    else
        zle .accept-line
    fi
}

# Bind the Enter key to our new function
zle -N accept-line
bindkey '^M' accept-line

eval "$(zoxide init zsh)"
#alias
alias ll='eza -laF --git'
alias ..='cd ..'
alias ...='cd ../..'
alias e='[ -z \$BUFFER ] && nvim || clear'
alias .='pwd'
alias acp='function _acp() { git add . && git commit -m "$1" && git push }; _acp'

alias ac='function _ac() { git add . && git commit -m "$1" }; _ac'
# haskell stuff
source ~/.ghcup/env

alias merge-to-production='git checkout production && git merge main && git push origin production && git checkout main'
export HELIX_RUNTIME=~/src/helix/runtime


export EDITOR=hx


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/ss/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP binary.
export PATH="/Users/ss/Library/Application Support/Herd/bin/":$PATH

[ -f "/Users/ss/.ghcup/env" ] && . "/Users/ss/.ghcup/env" # ghcup-env


# Herd injected NVM configuration
export NVM_DIR="/Users/ss/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"
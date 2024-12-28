# Herd injected NVM configuration
export NVM_DIR="/Users/sebastianstegmann/Library/Application Support/Herd/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -f "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh" ]] && builtin source "/Applications/Herd.app/Contents/Resources/config/shell/zshrc.zsh"

# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/sebastianstegmann/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/sebastianstegmann/Library/Application Support/Herd/bin/":$PATH

accept-line() {
    if [[ -z $BUFFER ]]; then
        nvim
    else
        zle .accept-line
    fi
}

# Bind the Enter key to our new function
zle -N accept-line
bindkey '^M' accept-line

#alias
alias ll='eza -laF --git'
alias ..='cd ..'
alias ...='cd ../..'
alias nv='nvim'
#alias ='nvim'
alias e='[ -z \$BUFFER ] && nvim || clear'
alias .='pwd'
alias acp='function _acp() { git add . && git commit -m "$1" && git push }; _acp'

# eval "$(zellij setup --generate-auto-start zsh)"
# tmux
# if [ -z "$TMUX" ]; then
#   tmux attach -t default || tmux new -s default
# fi

# eval "$(/Users/sebastianstegmann/.local/bin/mise activate zsh)"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
# [[ ! -r '/Users/sebastianstegmann/.opam/opam-init/init.zsh' ]] || source '/Users/sebastianstegmann/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

export PATH=$PATH:/run/current-system/sw/bin

export PATH=$PATH:/Users/sebastianstegmann/roc_nightly-macos_apple_silicon-2024-12-28-2e2be455080

# [ -f "/Users/sebastianstegmann/.ghcup/env" ] && . "/Users/sebastianstegmann/.ghcup/env" # ghcup-env
# export PATH="$HOME/.cabal/bin:$PATH"

# haskell stuff
source ~/.ghcup/env

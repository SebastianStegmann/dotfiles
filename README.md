# Dotfiles

I move dotfiles from original position
> mv .config/nvim .dotfiles/nvim

Then (soft)link back to it
> ln -s ~/.dotfiles/nvim ~/.config/nvim


Ghostty location
~/Library/Application Support/com.mitchellh.ghostty/

ln -s ~/.dotfiles/ghostty/config config

# Fresh install
1. Install Homebrew
'''
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
'''

2. Install Homebrew Bundle, to allow for Brewfiles
'''
brew bundle
'''

3. Make a Brewfile, it should include
'''
brew 'git'
brew 'stow'
brew 'helix'
brew 'yazi'
brew 'cowsay'
brew 'zoxide'
brew 'ncspot'
brew 'bat'
brew 'eza'


cask 'hyperkey'
cask 'ghostty'
cask 'brave-browser'
cask 'betterdisplay'
cask 'herd'


'''

4. Use GNU Stow for placing dotfiles 

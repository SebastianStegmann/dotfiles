Managing my dotfiles via stow
Install this repo and place it in ~/.dotfiles

# Fresh install
1. Install Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install Homebrew Bundle, to allow for Brewfiles
```
brew bundle
```

3. Using stow

```
stow */ 
```

Either stow each folder with `stow nvim` etc
or use the wildcard `*/` to place everything
`stow . ` misplaces the folders


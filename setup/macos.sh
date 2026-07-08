# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

## === Terminal ===
brew install neovim
# LazyVim starter (installs to ~/.config/nvim), then bootstrap plugins headlessly
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
nvim --headless "+Lazy! sync" +qa

# Install oh-my-posh, ghostty
brew tap jandedobbeleer/oh-my-posh
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install --cask ghostty

# Install stow, setup symlinks for dotfiles
brew install stow
cd "$(dirname "$0")/.." && stow --target="$HOME" zsh nvim ghostty oh-my-posh

# Link zshrc (force, in case macOS/Homebrew already created a ~/.zshrc)
ln -sf "$PWD/zsh/.zshrc" "$HOME/.zshrc"

## === Development ===
# Python
brew install uv

# JS
brew install node

## === Utilities ===

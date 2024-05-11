
# !/bin/bash

# sudo apt update
# sudo apt install zsh exa bat jq
# curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
# ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc

if [ "$(uname)" == "Darwin" ]; then
    echo "Install for macOS"
    if ! command -v brew &> /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed"
    fi
fi

brew install alacritty mos raycast itsycal skim
brew install bat lsd duf fd fzf yazi zoxide httpie helix gorn jq git tig tmux

# zsh

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# config
# git clone https://github.com/xiaoheiwowo/Xdotfiles $HOME/.dotfiles

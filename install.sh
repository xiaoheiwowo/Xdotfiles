git clone https://github.com/xiaoheiwowo/Xdotfiles $HOME/.dotfiles

sudo apt update
sudo apt install zsh exa bat jq

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s $HOME/.dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.vimrc $HOME/.vimrc


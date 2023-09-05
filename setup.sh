# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install starship
curl -sS https://starship.rs/install.sh | sh -s -- -y

# Install Oh My Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Link configs
mv ~/.zshrc ~/.zshrc.old
ln -sf ~/dotfiles/.zshrc ~/.zshrc

mv ~/.gitconfig ~/.gitconfig.old
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# Reload zsh config
source ~/.zshrc

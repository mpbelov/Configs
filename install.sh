# install zsh
sudo apt install zsh
chsh -s $(which zsh)

# restart

sudo apt install git
sudo apt install curl

# install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugin zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh theme powerlevel10k https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

curl https://raw.githubusercontent.com/mpbelov/Configs/master/.zhrc?token=ABJHTETRKKDBFUK3VN73IQC7N63IO -o ~/.zhrc
curl https://raw.githubusercontent.com/mpbelov/Configs/master/.config/zsh-aliases\?token\=ABJHTEQMBEGJIIEQIB2GSYC7N62X6 -o ~/.config/zsh-aliases
curl https://raw.githubusercontent.com/mpbelov/Configs/master/.config/.p10k.zsh?token=ABJHTERBPJ5TOXCUEJVO4GC7N63E4 -o ~/.config/.p10k.zsh

# install stores
sudo snap install snap-store
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


flatpak install flathub org.telegram.desktop

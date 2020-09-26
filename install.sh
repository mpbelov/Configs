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

# sudo wget --content-disposition -P /usr/local/share/fonts/powerline/robotomono https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20{Bold,Bold%20Italic,Italic,Light,Light%20Italic,Medium,Medium%20Italic,Regular,Thin,Thin%20Italic}%20for%20Powerline.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete.ttf

curl https://raw.githubusercontent.com/mpbelov/Configs/master/.zhrc -o ~/.zhrc
curl https://raw.githubusercontent.com/mpbelov/Configs/master/.config/zsh-aliases -o ~/.config/zsh-aliases
curl https://raw.githubusercontent.com/mpbelov/Configs/master/.config/.p10k.zsh -o ~/.config/.p10k.zsh

sudo apt-get install fonts-powerline

# install stores
sudo snap install snap-store
# fix kde problems with snap applications https://www.reddit.com/r/kde/comments/9pjos2/snaps_in_application_launcher/eh0v1um/
sudo sh -c "echo emulate sh -c \'source /etc/profile\' >> /etc/zsh/zprofile"

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


flatpak install flathub org.telegram.desktop
flatpak install flathub org.keepassxc.KeePassXC

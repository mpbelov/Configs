# install zsh
sudo apt install zsh
chsh -s $(which zsh)

# restart

sudo apt install -y git
sudo apt install -y curl

git config --global user.name "Mikhail Belov"
git config --global user.email "mpbelov@gmail.com"

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

# sudo apt-get install fonts-powerline

sudo apt install -y tilix
# fix tilix https://gnunn1.github.io/tilix-web/manual/vteconfig/
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# install stores
sudo snap install snap-store
# fix kde problems with snap applications https://www.reddit.com/r/kde/comments/9pjos2/snaps_in_application_launcher/eh0v1um/
sudo sh -c "echo emulate sh -c \'source /etc/profile\' >> /etc/zsh/zprofile"

sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo

flatpak install flathub org.telegram.desktop
flatpak install flathub org.keepassxc.KeePassXC

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update && sudo apt install -y sublime-merge

curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update && sudo apt install -y albert

sudo snap install --classic code

sudo apt install -y tmux
sudo apt install -y neovim

curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" |
sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-3.1

sudo apt install -y openjdk-11-jre

sudo apt install -y python3-pip

sudo apt install -y playonlinux
sudo apt install -y gparted
sudo apt install -y qbittorrent

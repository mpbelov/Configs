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

# Update configurations
mkdir -p /home/$(whoami)/Projects 
cd /home/$(whoami)/Projects
git clone git@github.com:mpbelov/Configs.git
## .zshrc
rm -f /home/$(whoami)/.zshrc
ln -s /home/$(whoami)/Projects/Configs/.zshrc /home/$(whoami)/.zshrc
## zsh aliases
rm -f /home/$(whoami)/.config/zsh-aliases
ln -s /home/$(whoami)/Projects/Configs/.config/zsh-aliases /home/$(whoami)/.config/zsh-aliases
## p10k zsh theme
rm -f /home/$(whoami)/.config/.p10k.zsh
ln -s /home/$(whoami)/Projects/Configs/.config/.p10k.zsh /home/$(whoami)/.config/.p10k.zsh
## Omnisharp
mkdir -p /home/$(whoami)/.omnisharp
rm -f /home/$(whoami)/.omnisharp/omnisharp.json
ln -s /home/$(whoami)/Projects/Configs/.omnisharp/omnisharp.json /home/$(whoami)/.omnisharp/omnisharp.json

# Install fonts

# Roboto Mono Nerd Font
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Regular/complete/Roboto%20Mono%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Bold/complete/Roboto%20Mono%20Bold%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Italic/complete/Roboto%20Mono%20Italic%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Bold-Italic/complete/Roboto%20Mono%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Light/complete/Roboto%20Mono%20Light%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Light-Italic/complete/Roboto%20Mono%20Light%20Italic%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Medium-Italic/complete/Roboto%20Mono%20Medium%20Italic%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Medium/complete/Roboto%20Mono%20Medium%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Thin/complete/Roboto%20Mono%20Thin%20Nerd%20Font%20Complete.ttf
sudo wget --content-disposition -P /usr/local/share/fonts/nerd/robotomono https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/RobotoMono/Thin-Italic/complete/Roboto%20Mono%20Thin%20Italic%20Nerd%20Font%20Complete.ttf

mkdir -p /home/$(whoami)/temp
wget -O /home/$(whoami)/temp/OpenSans.zip https://fonts.google.com/download?family=Open%20Sans
unzip -d /home/$(whoami)/temp/OpenSans/ /home/$(whoami)/temp/OpenSans.zip
sudo mkdir -p /usr/local/share/fonts/google/OpenSans
sudo cp /home/$(whoami)/temp/OpenSans/* /usr/local/share/fonts/google/OpenSans/
rm -rf /home/$(whoami)/temp/OpenSans/
rm /home/$(whoami)/temp/OpenSans.zip

wget -O /home/$(whoami)/temp/Roboto.zip https://fonts.google.com/download?family=Roboto
unzip -d /home/$(whoami)/temp/Roboto/ /home/$(whoami)/temp/Roboto.zip
sudo mkdir -p /usr/local/share/fonts/google/Roboto
sudo cp /home/$(whoami)/temp/Roboto/* /usr/local/share/fonts/google/Roboto/
rm -rf /home/$(whoami)/temp/Roboto/
rm /home/$(whoami)/temp/Roboto.zip

wget -O /home/$(whoami)/temp/NotoSans.zip https://fonts.google.com/download?family=Noto%20Sans
unzip -d /home/$(whoami)/temp/NotoSans/ /home/$(whoami)/temp/NotoSans.zip
sudo mkdir -p /usr/local/share/fonts/google/NotoSans
sudo cp /home/$(whoami)/temp/NotoSans/* /usr/local/share/fonts/google/NotoSans/
rm -rf /home/$(whoami)/temp/NotoSans/
rm /home/$(whoami)/temp/NotoSans.zip

wget -O /home/$(whoami)/temp/RobotoSlab.zip https://fonts.google.com/download?family=Roboto%20Slab.zip
unzip -d /home/$(whoami)/temp/RobotoSlab/ /home/$(whoami)/temp/RobotoSlab.zip
sudo mkdir -p /usr/local/share/fonts/google/RobotoSlab
sudo cp /home/$(whoami)/temp/RobotoSlab/* /usr/local/share/fonts/google/RobotoSlab/
rm -rf /home/$(whoami)/temp/RobotoSlab/
rm /home/$(whoami)/temp/RobotoSlab.zip

wget -O /home/$(whoami)/temp/SourceSerifPro.zip https://fonts.google.com/download?family=Source_Serif_Pro.zip \
&& unzip -d /home/$(whoami)/temp/SourceSerifPro/ /home/$(whoami)/temp/SourceSerifPro.zip \
&& sudo mkdir -p /usr/local/share/fonts/google/SourceSerifPro \
&& sudo cp /home/$(whoami)/temp/SourceSerifPro/* /usr/local/share/fonts/google/SourceSerifPro/ \
&& rm -rf /home/$(whoami)/temp/SourceSerifPro/ \
&& rm /home/$(whoami)/temp/SourceSerifPro.zip

# sudo apt-get install fonts-powerline
sudo fc-cache -f

sudo apt install -y tilix
# fix tilix https://gnunn1.github.io/tilix-web/manual/vteconfig/
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# install Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository 'deb https://repo.vivaldi.com/archive/deb/ stable main'
sudo apt update
sudo apt install vivaldi-stable -y

# install Edge
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
# sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
# sudo apt update
sudo apt install microsoft-edge-stable -y

# Install OneDrive client
# https://github.com/abraunegg/onedrive/blob/master/docs/INSTALL.md
mkdir -p /home/$(whoami)/.config/onedrive
ln -s /home/$(whoami)/Projects/Configs/.config/onedrive/config /home/$(whoami)/.config/onedrive/config
ln -s /home/$(whoami)/Projects/Configs/.config/onedrive/sync_list /home/$(whoami)/.config/onedrive/sync_list
# onedrive --logout
onedrive # login
onedrive --synchronize --resync
systemctl --user enable onedrive && systemctl --user start onedrive

# install stores
sudo snap install snap-store
# fix kde problems with snap applications https://www.reddit.com/r/kde/comments/9pjos2/snaps_in_application_launcher/eh0v1um/
sudo sh -c "echo emulate sh -c \'source /etc/profile\' >> /etc/zsh/zprofile"

sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo

# Install KeePassXC
sudo snap install keepassxc 

# Install Telegram
sudo snap install telegram-desktop

# Install Muon
sudo apt install -y muon

# Install Sublime and Sublime Merge
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install -y sublime-merge
sudo apt install -y sublime-text

curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
sudo apt update && sudo apt install -y albert

# Install VS Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudp apt install code -y

# Install .NET
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

sudo apt install -y tmux
sudo apt install -y neovim

# Install NodeJS
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | zsh
source ~/.zshrc
nvm install --lts
npm install --global yarn

# Install .NET
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb;
sudo dpkg -i packages-microsoft-prod.deb;
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0

# Install Java
sudo apt install -y openjdk-8-jdk
sudo apt install -y openjdk-11-jdk

sudo apt install -y python3-pip

sudo apt install -y playonlinux
sudo apt install -y gparted
sudo apt install -y qbittorrent

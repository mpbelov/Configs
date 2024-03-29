# Zsh
sudo dnf install zsh -y
sudo usermod --shell $(which zsh) $(whoami)

sudo dnf install fish -y
sudo dnf install xclip -y

# install oh-my-zsh https://github.com/ohmyzsh/ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugin zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh theme powerlevel10k https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Git
sudo dnf install git -y
git config --global user.name "Mikhail Belov"
git config --global user.email "mpbelov@gmail.com"

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

sudo fc-cache -f

# Fix Firefox video
# https://rpmfusion.org/Configuration
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Install tilix
sudo dnf install tilix -y
sudo dnf remove gnome-terminal -y
sudo dnf remove konsole -y

# GNOME
## Install GUI dconf editor
sudo dnf install dconf-editor -y
gsettings set org.gnome.mutter auto-maximize false

## Add world clocks
gsettings set org.gnome.shell.world-clocks locations "[<(uint32 2, <('Moscow', 'UUWW', true, [(0.97127572873484425, 0.65042604039431762)], [(0.97305983920281813, 0.65651530216830811)])>)>, <(uint32 2, <('Vancouver', 'CYVR', true, [(0.85841109795478021, -2.1496638678574467)], [(0.85957465660720722, -2.1490820798045869)])>)>]"

## change hotkeys 
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-next-terminal 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-previous-terminal 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-next-session '<Ctrl>Tab'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-previous-session '<Ctrl><Shift>Tab'
gsettings set com.gexperts.Tilix.Keybindings app-new-session '<Ctrl>T'
gsettings set com.gexperts.Tilix.Keybindings app-new-window '<Ctrl>N'
gsettings set com.gexperts.Tilix.Keybindings terminal-close '<Ctrl>W'
# gsettings set com.gexperts.Tilix.Keybindings terminal-copy '<Alt>c'
# gsettings set com.gexperts.Tilix.Keybindings terminal-paste '<Alt>v'
gsettings set com.gexperts.Tilix.Keybindings terminal-find '<Ctrl>f'
gsettings set com.gexperts.Tilix.Keybindings terminal-find-next '<Ctrl>f'
gsettings set com.gexperts.Tilix.Keybindings terminal-find-previous '<Ctrl><Shift>f'
gsettings set com.gexperts.Tilix.Settings prompt-on-close false
gsettings set com.gexperts.Tilix.Settings terminal-title-style 'none'
gsettings set com.gexperts.Tilix.Settings theme-variant 'dark'
gsettings set com.gexperts.Tilix.Settings use-tabs true
gsettings set com.gexperts.Tilix.Settings window-save-state true

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code -y

# Install NodeJS
# sudo dnf install nodejs -y
# https://github.com/nvm-sh/nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
source ~/.zshrc
nvm install --lts
npm install --global yarn
# fix react native android studio issue https://stackoverflow.com/questions/61922174/react-native-on-android-cannot-run-program-node-error-2-no-such-file-or-dir
sudo ln -s "$(which node)" /usr/local/bin/node


# Install .NET
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo wget -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/33/prod.repo
sudo dnf check-update
sudo dnf install dotnet-sdk-3.1 -y
sudo dnf install dotnet-sdk-5.0 -y

# Install Java
sudo dnf install java-1.8.0-openjdk-devel.x86_64
sudo dnf install java-11-openjdk-devel.x86_64
# sudo alternatives --config java

# Install CMake
sudo dnf install gcc-c++ -y
sudo dnf install clang -y
sudo dnf install cmake -y

# Install Sublime and Sublime Merge
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf check-update

sudo dnf install sublime-merge -y
sudo dnf install sublime-text -y

# Install KeePassXC
sudo dnf install keepassxc -y
# flatpak install flathub org.telegram.desktop
# flatpak install flathub org.keepassxc.KeePassXC

# Install Snap
# https://snapcraft.io/docs/installing-snap-on-fedora
sudo dnf install snapd -y

# Install OneDrive client
sudo dnf install onedrive -y
mkdir -p /home/$(whoami)/.config/onedrive
ln -s /home/$(whoami)/Projects/Configs/.config/onedrive/config /home/$(whoami)/.config/onedrive/config
ln -s /home/$(whoami)/Projects/Configs/.config/onedrive/sync_list /home/$(whoami)/.config/onedrive/sync_list
# onedrive --logout
onedrive # login
onedrive --synchronize --resync
systemctl --user enable onedrive && systemctl --user start onedrive

# KVM
sudo dnf install bridge-utils libvirt virt-install qemu-kvm -y
sudo dnf install virt-top libguestfs-tools -y
sudo systemctl start libvirtd
sudo systemctl enable libvirtd
sudo dnf install virt-manager -y

# Further set up
# https://www.debugpoint.com/2020/10/10-things-to-do-fedora-33-after-install/
## Video codecs
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf check-update
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf groupupdate sound-and-video -y

# TLP for Battery health management
sudo dnf install tlp tlp-rdw -y
sudo dnf install https://repo.linrunner.de/fedora/tlp/repos/releases/tlp-release.fc$(rpm -E %fedora).noarch.rpm -y
sudo dnf install kernel-devel akmod-acpi_call akmod-tp_smapi -y


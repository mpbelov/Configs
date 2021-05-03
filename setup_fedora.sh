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
mkdir -p /home/mikhail/Projects 
cd /home/mikhail/Projects
git clone git@github.com:mpbelov/Configs.git
## .zshrc
rm -f /home/mikhial/.zshrc
ln -s /home/mikhail/Projects/Configs/.zshrc /home/mikhail/.zshrc
## zsh aliases
rm -f /home/mikhail/.config/zsh-aliases
ln -s /home/mikhail/Projects/Configs/.config/zsh-aliases /home/mikhail/.config/zsh-aliases
## p10k zsh theme
rm -f /home/mikhail/.config/.p10k.zsh
ln -s /home/mikhail/Projects/Configs/.config/.p10k.zsh /home/mikhail/.config/.p10k.zsh
## Omnisharp
mkdir -p /home/mikhail/.omnisharp
rm -f /home/mikhail/.omnisharp/omnisharp.json
ln -s /home/mikhail/Projects/Configs/.omnisharp/omnisharp.json /home/mikhail/.omnisharp/omnisharp.json

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

mkdir -p /home/mikhail/temp
wget -O /home/mikhail/temp/OpenSans.zip https://fonts.google.com/download?family=Open%20Sans
unzip -d /home/mikhail/temp/OpenSans/ /home/mikhail/temp/OpenSans.zip
sudo mkdir -p /usr/local/share/fonts/google/OpenSans
sudo cp /home/mikhail/temp/OpenSans/* /usr/local/share/fonts/google/OpenSans/
rm -rf /home/mikhail/temp/OpenSans/
rm /home/mikhail/temp/OpenSans.zip

wget -O /home/mikhail/temp/Roboto.zip https://fonts.google.com/download?family=Roboto
unzip -d /home/mikhail/temp/Roboto/ /home/mikhail/temp/Roboto.zip
sudo mkdir -p /usr/local/share/fonts/google/Roboto
sudo cp /home/mikhail/temp/Roboto/* /usr/local/share/fonts/google/Roboto/
rm -rf /home/mikhail/temp/Roboto/
rm /home/mikhail/temp/Roboto.zip

wget -O /home/mikhail/temp/NotoSans.zip https://fonts.google.com/download?family=Noto%20Sans
unzip -d /home/mikhail/temp/NotoSans/ /home/mikhail/temp/NotoSans.zip
sudo mkdir -p /usr/local/share/fonts/google/NotoSans
sudo cp /home/mikhail/temp/NotoSans/* /usr/local/share/fonts/google/NotoSans/
rm -rf /home/mikhail/temp/NotoSans/
rm /home/mikhail/temp/NotoSans.zip

wget -O /home/mikhail/temp/RobotoSlab.zip https://fonts.google.com/download?family=Roboto%20Slab.zip
unzip -d /home/mikhail/temp/RobotoSlab/ /home/mikhail/temp/RobotoSlab.zip
sudo mkdir -p /usr/local/share/fonts/google/RobotoSlab
sudo cp /home/mikhail/temp/RobotoSlab/* /usr/local/share/fonts/google/RobotoSlab/
rm -rf /home/mikhail/temp/RobotoSlab/
rm /home/mikhail/temp/RobotoSlab.zip

wget -O /home/mikhail/temp/SourceSerifPro.zip https://fonts.google.com/download?family=Source_Serif_Pro.zip \
&& unzip -d /home/mikhail/temp/SourceSerifPro/ /home/mikhail/temp/SourceSerifPro.zip \
&& sudo mkdir -p /usr/local/share/fonts/google/SourceSerifPro \
&& sudo cp /home/mikhail/temp/SourceSerifPro/* /usr/local/share/fonts/google/SourceSerifPro/ \
&& rm -rf /home/mikhail/temp/SourceSerifPro/ \
&& rm /home/mikhail/temp/SourceSerifPro.zip

sudo fc-cache -f

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
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | zsh
nvm install --lts
npm install --global yarn


# Install .NET
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo wget -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/33/prod.repo
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

# Install sublime merge
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-merge -y

# Install KeePassXC
sudo dnf install keepassxc -y

# Install OneDrive client
sudo dnf install onedrive -y
ln -s /home/mikhail/Projects/Configs/.config/onedrive/config /home/mikhail/.config/onedrive/config
ln -s /home/mikhail/Projects/Configs/.config/onedrive/sync_list /home/mikhail/.config/onedrive/sync_list
onedrive # login
onedrive --synchronize --resync
systemctl --user enable onedrive && systemctl --user start onedrive

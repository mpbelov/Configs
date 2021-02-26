sudo dnf install zsh -y
sudo usermod --shell $(which zsh) $(whoami)

sudo dnf install fish -y

# Install fonts
mkdir -p /home/mikhail/temp
wget -O /home/mikhail/temp/Open_Sans.zip https://fonts.google.com/download?family=Open%20Sans
unzip -d /home/mikhail/temp/Open_Sans/ /home/mikhail/temp/Open_Sans.zip
sudo mkdir -p /usr/local/share/fonts/google/OpenSans
sudo cp /home/mikhail/temp/Open_Sans/* /usr/local/share/fonts/google/OpenSans/
rm -rf /home/mikhail/temp/Open_Sans/
rm /home/mikhail/temp/Open_Sans.zip

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

sudo fc-cache -f

# Install GUI dconf editor
sudo dnf install dconf-editor -y

# Add world clocks
gsettings set org.gnome.shell.world-clocks locations "[<(uint32 2, <('Moscow', 'UUWW', true, [(0.97127572873484425, 0.65042604039431762)], [(0.97305983920281813, 0.65651530216830811)])>)>, <(uint32 2, <('Vancouver', 'CYVR', true, [(0.85841109795478021, -2.1496638678574467)], [(0.85957465660720722, -2.1490820798045869)])>)>]"


# Install tilix
sudo dnf install tilix -y
sudo dnf remove gnome-terminal -y

# change hotkeys 
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-next-terminal 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-previous-terminal 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-next-session '<Ctrl>Tab'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-previous-session '<Ctrl><Shift>Tab'
gsettings set com.gexperts.Tilix.Keybindings app-new-session '<Ctrl>T'
gsettings set com.gexperts.Tilix.Keybindings app-new-window '<Ctrl>N'
gsettings set com.gexperts.Tilix.Keybindings terminal-close '<Ctrl>W'
gsettings set com.gexperts.Tilix.Keybindings terminal-copy '<Alt>c'
gsettings set com.gexperts.Tilix.Keybindings terminal-paste '<Alt>v'
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
sudo dnf install nodejs -y


# Install .NET
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo wget -O /etc/yum.repos.d/microsoft-prod.repo https://packages.microsoft.com/config/fedora/33/prod.repo
sudo dnf install dotnet-sdk-5.0 -y
#sudo dnf install dotnet-sdk-3.1 -y

# Install sublime merge
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install sublime-merge -y

# Install KeePassXC
sudo dnf install keepassxc -y
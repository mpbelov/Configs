sudo dnf install zsh -y
chsh -s $(which zsh)

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

# Install VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code -y


# Install NodeJS
sudo dnf install nodejs -y


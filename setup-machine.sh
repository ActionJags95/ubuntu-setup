# Initial setup
sudo apt update -y
sudo apt upgrade -y
sudo apt install git -y
sudo apt install gcc -y
sudo apt install g++ -y
sudo apt install python3-pip -y
sudo apt install python-is-python3 -y
sudo apt install python3-py -y
sudo apt install neofetch -y
sudo apt install vlc -y
sudo apt install tmux -y
sudo apt install gnome-shell-extension-manager
sudo apt install gnome-tweaks

# Auto-updates setting
sudo apt install unattended-upgrades -y
sudo dpkg-reconfigure --priority=low unattended-upgrades

# NodeJS setup
sudo apt install curl -y
sudo apt update -y && sudo apt upgrade -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
command -v nvm
nvm install --lts
nvm use --lts

# Time and Date resolve
timedatectl set-local-rtc 1

# Chrome setup
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# SSH config
ssh-keygen -t ed25519
cat ~/.ssh/id_ed25519.pub

# Git config
git config --global user.name "ActionJags95"
git config --global user.email "118545266+ActionJags95@users.noreply.github.com"
git config --global init.defaultBranch main
git config --global core.editor "code --wait"
git config --global pull.rebase false

# Notion Setup
echo "deb [trusted=yes] https://apt.fury.io/notion-repackaged/ /" | sudo tee /etc/apt/sources.list.d/notion-repackaged.list
sudo apt update
sudo apt install notion-app

# DB setup
## MySQL server
sudo apt install mysql-server
## MongoDB
cat /etc/lsb-release
sudo apt-get install gnupg curl
curl -fsSL https://www.mongodb.org/static/pgp/server-8.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-8.0.gpg \
   --dearmor
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-8.0.gpg ] https://repo.mongodb.org/apt/ubuntu noble/mongodb-org/8.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-8.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# NeoVim setup
sudo apt install neovim -y
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim


# Dracula
## Dracula Theme
mkdir Dracula
cd Dracula
git clone https://github.com/odziom91/libadwaita-theme-changer.git
cd libadwaita-theme-changer
chmod +x libadwaita-tc.py
./libadwaita-tc.py
cd ..

## Dracula Terminal
sudo apt-get install dconf-cli
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
./install.sh

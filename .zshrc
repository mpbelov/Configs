export ZSH="/home/$(whoami)/.oh-my-zsh"

# ZSH_THEME="robbyrussell"
# ZSH_THEME="af-magic"
# ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.config/.p10k.zsh
[[ ! -f ~/.config/.p10k.zsh ]] || source ~/.config/.p10k.zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# ####### Plugins #######
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(sudo history copyfile copypath z zsh-autosuggestions vscode git jsontools adb gulp react-native node yarn)
# VERY SLOW:
#   zsh-syntax-highlighting
# NOT WORKING:
#   zsh-interactive-cd


source $ZSH/oh-my-zsh.sh

# ######################
# User configuration

# Fix environment for Wayland + zsh + snapd
# https://bugs.launchpad.net/ubuntu/+source/snapd/+bug/1640514
# https://forum.snapcraft.io/t/desktop-snaps-do-not-appear-in-the-dash-menu-on-gnome-in-17-10-final-beta/2340/11
if [ "$XDG_SESSION_TYPE" = "wayland" ] ; then
    if [ -f "/etc/profile.d/apps-bin-path.sh" ] ; then
        source /etc/profile.d/apps-bin-path.sh
    fi
fi

# Fix problem with tilix https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
      print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
      print -n "%{%k%}"
  fi

  print -n "%{%f%}"
  CURRENT_BG='' 

  #Adds the new line and ➜ as the start character.
  printf "\n ➜";
}

PROMPT='%{$fg[yellow]%}[%D{%F} %D{%T} %D{%Z}]'$PROMPT


# ####### NodeJS #######
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PATH="$HOME/.npm/bin:$PATH"
PATH="./node_modules/.bin:$PATH"
#export PATH=$PATH:$HOME/Programs/Watchman/bin


# ######## Java ########
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/"
export PATH=$PATH:$JAVA_HOME/bin


# ###### Android #######
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin

# ####### Python #######
export PATH=$PATH:$HOME/.local/bin


# ###### Aliases #######
source ~/.config/zsh-aliases

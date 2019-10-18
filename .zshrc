# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/home/artshellorok/.oh-my-zsh"
export TERM=xterm-256color
export PATH=$PATH:/opt/android-sdk/tools
export PATH=$PATH:/usr/lib/jvm/java-8-openjdk/bin
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk
export ANDROID_HOME=/opt/android-sdk
alias urx="xrdb ~/.Xresources"
alias urxe="vim ~/.Xresources"
alias so="source ~/.zshrc"
alias soe="vim ~/.zshrc"
alias vie="vim ~/.vimrc"
alias ie="vim ~/.config/i3/config"
alias gtke="vim ~/.config/gtk-3.0/settings.ini"
alias gtk="vim ~/.config/gtk-3.0/gtk.css"
alias tinker="phpd artisan tinker"
alias migrate="phpd artisan migrate:fresh"
alias migraten="phpd artisan migrate"
alias gopr="cd ~/projects/yeducationback/php"
alias pu="./vendor/bin/phpunit"
alias chrome="google-chrome-stable"
alias pole="vim ~/.config/polybar/config"
alias poll="vim ~/.config/polybar/launch.sh"
alias cale="vim ~/.config/polybar/calendar.sh"
alias dperm="sudo chmod -R 777 ."
alias mye="docker exec -it yeducationback_mariadb_1 sh -c 'mysql -u root -p'"
alias host="sudo vim /etc/hosts"
alias sph="mysql -u root -p --port 8080 --protocol TCP"
alias php="/usr/bin/php"
alias vgar="vim ~/.vim/plugins.vim"
alias prj="gvim ~/projects"
alias rc="vim ~/.vimrc"
alias composer="php /usr/bin/composer"
setopt PROMPT_CR
setopt PROMPT_SP
export PROMPT_EOL_MARK=""
function inet(){
    sudo ip link set enp3s0 up
    sudo ip addr add 192.168.1.64/24 dev enp3s0
    sudo ip ro add default via 192.168.1.1
}
function buildapp(){
    npm run cordova-build-only-www-android && cd src-cordova && cordova build android && cd ..
    sudo cp src-cordova/platforms/android/app/build/outputs/apk/debug/app-debug.apk /srv/http/app-debug.apk
    cd /srv/http
    nohup php -S 192.168.1.64:8090 &> /dev/null &!
    cd - > /dev/null
}
function indexer(){
    docker exec -it yeducationback_sphinx_1 indexer ${@:1}
}
function push(){
    sudo git add .
    sudo git commit
    sudo git push
}
function stash(){
    sudo git add .
    sudo git stash
}
function phpd(){
    artisan_path=/var/www/html/back/$1
    docker exec -it hackathon_web_1 php $artisan_path ${@:2}
}
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

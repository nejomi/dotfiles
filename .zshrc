# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/bin"
export PATH="$HOME/bin:$PATH"
#export PATH="$PATH:$HOME/.config/composer/vendor/bin"
#export PATH="$PATH:$HOME/.vim/plugged/phpactor/bin"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting) #zsh-autosuggestions 

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_UNICODE=true

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
LANG="en_US.UTF-8"
LC_COLLATE="en_US"
LC_CTYPE="en_US"
LC_MESSAGES="en_US"
LC_MONETARY="en_US"
LC_NUMERIC="en_US"
LC_TIME="en_US"

#ZSH_TMUX_AUTOSTART=true
#ZSH_TMUX_FIXTERM_WITH_256COLOR=true
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

alias proj="cd ~/Projects"
alias f="ranger"
alias v="nvim"
alias ve="nvim ."
alias p="cd ~/Projects"

# Add every binary that requires nvm, npm or node to run to an array of node globals
NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)
NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")
NODE_GLOBALS+=("nvim") 
NODE_GLOBALS+=("nnn")
NODE_GLOBALS+=("ranger")

# Lazy-loading nvm + npm on node globals call
load_nvm () {
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
}

# Making node global trigger the lazy loading
for cmd in "${NODE_GLOBALS[@]}"; do
  eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done

# nnn
ne ()
{
    # Block nesting of nnn in subshells
    if [ -n $NNNLVL ] && [ "${NNNLVL:-0}" -ge 1 ]; then
        echo "nnn is already running"
        return
    fi

    # The default behaviour is to cd on quit (nnn checks if NNN_TMPFILE is set)
    # To cd on quit only on ^G, remove the "export" as in:
    #     NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"
    # NOTE: NNN_TMPFILE is fixed, should not be modified
    export NNN_TMPFILE="${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.lastd"

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    nnn "$@"

    if [ -f "$NNN_TMPFILE" ]; then
            . "$NNN_TMPFILE"
            rm -f "$NNN_TMPFILE" > /dev/null
    fi
}  

export TERM="xterm-256color"

# stuff for nnn
export EDITOR=nvim
export NNN_USE_EDITOR=1
export LC_COLLATE="C"
export NNN_BMS='d:~/Downloads;p:~/Projects;h:~;o:~/dotfiles'
export NNN_PLUG='c:previewtui;o:fzopen;p:mocplay;d:diffs;t:nmount;m:-_mediainfo $nnn;s:_smplayer -minigui $nnn*;c:fzcd;a:-_mocp*;y:-_sync*;k:-_fuser -kiv $nnn*;i:imgview'
export NNN_COLORS='4123'
export NNN_FIFO=/tmp/nnn.fifo

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux -u
fi

# launch nnn
alias n="ne -eR"

# bat
export BAT_THEME="base16"

# pfetch
export PF_INFO="ascii title os wm kernel uptime pkgs memory" 

# live server for static html css js
alias www="live-server"

# colorful ls
alias ls="exa -la"
#alias ls="ls -la --color=auto"

# get window names for i3
alias gw="xprop | grep -i 'class'"

# edit i3 config
alias i3conf="nvim ~/dotfiles/i3/i3.config"

# start mysql
alias sqlstart="sudo service mysql start"

# start apache
alias serverstart="sudo service apache2 start && sudo service mysql start"

alias lamp="sudo systemctl start httpd && sudo systemctl start mariadb"

# sudo
alias please="sudo"

#alias code="codium"

# caps
alias caps="~/dotfiles/scripts/caps-ctrl-enter.sh"

# redhift
alias nightmode="redshift -l 14.573617:121.0220416 &"

# random
alias rand="openssl rand -base64"

eval "$(starship init zsh)"

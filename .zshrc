
# history
SAVEHIST=100000

# vim bindings
bindkey -v


fpath=( "$HOME/.zfunctions" $fpath )

# Guess what to install when running an unknown command.
#$b command-not-found

# Helper for extracting different types of archives.
#$b extract

# Tracks your most used directories, based on 'frecency'.
#$b robbyrussell/oh-my-zsh plugins/z

# nicoulaj's moar completion files for zsh -- not sure why disabled.
# $b zsh-users/zsh-completions src

# Syntax highlighting on the readline
#$b zsh-users/zsh-syntax-highlighting

# history search
#$b zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh

# suggestions
#$b tarruda/zsh-autosuggestions

# colors for all files!
#$b trapd00r/zsh-syntax-highlighting-filetypes

# dont set a theme, because pure does it all
#$b mafredri/zsh-async
#$b sindresorhus/pure

# Tell antigen that you're done.
#antigen apply

###
#################################################################################################



# bind UP and DOWN arrow keys for history search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# config for suggestions
AUTOSUGGESTION_ACCEPT_RIGHT_ARROW=1

export PURE_GIT_UNTRACKED_DIRTY=0

# Automatically list directory contents on `cd`.
auto-ls () {
	emulate -L zsh;
	# explicit sexy ls'ing as aliases arent honored in here.
	hash gls >/dev/null 2>&1 && CLICOLOR_FORCE=1 gls -aFh --color --group-directories-first || ls
}
chpwd_functions=( auto-ls $chpwd_functions )


# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

#zle -N zle-line-init


# history mgmt
# http://www.refining-linux.org/archives/49/ZSH-Gem-15-Shared-history/
setopt inc_append_history
setopt share_history


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'


# uncomment to finish profiling
# zprof



# Load default dotfiles
source ~/.bashrc


# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting


#
#
#
# zsh configs
#
#
#


# Path to your oh-my-zsh installation.
export ZSH=/Users/ricardotorres/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker)

# User configuration

# export PATH="$PATH:/Users/ricardotorres/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/Users/ricardotorres/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  # without this next line there's a big performance hit to `cd`
  # so we are adding it to make sure the script won't check for `.nvmrc`
  # in parent directories and it also won't go back to the default
  # node version when you `cd` out of the project dir.
  # - https://stackoverflow.com/questions/23556330/run-nvm-use-automatically-every-time-theres-a-nvmrc-file-on-the-directory#comment104625451_39519460
  [[ -a .nvmrc ]] || return

  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

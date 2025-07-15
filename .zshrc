# alacritty competebility props
#
export TERM="alacritty"
#bindkey "^[[A" history-search-backward
#bindkey "^[[B" history-search-forward

# VULKAN ENV VARIABLES
export VULKAN_ROOT_LOCATON=$HOME
export VULKAN_SDK_VERSION=1.3.275.0
export VULKAN_SDK=$VULKAN_ROOT_LOCATON/VulkanSDK/$VULKAN_SDK_VERSION/macOS
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d 
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export REACT=$(cd /Users/oleksandrzhurba/development/ts/ITCH/React)
export SFML=/opt/homebrew/Cellar/sfml/'2.6.1'

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
ANDROID_HOME=/Users/oleksandrzhurba/Library/Android/sdk
MOUSE_FIX=~/Documents/'fixmouse-1.0.1'/
DEV_PATH=~/development/bin
MONGODB=~/'mongodb-macos-aarch64-8.0.0'/bin
PLAN9=/Users/oleksandrzhurba/development/plan9
CARGO_BIN=/Users/oleksandrzhurba/.cargo/bin
export MONGODB
export ANDROID_HOME
export PLAN9
export MY_UTILS
export PATH=$(go env GOPATH)/bin:$MONGODB:$DEV_PATH:$VULKAN_SDK/bin:$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$ANDROID_HOME/platform-tools:$MOUSE_FIX:$PATH:$PLAN9/bin:$CARGO_BIN/
export font=/mnt/font/Monaco/18a/font


#alias acme=$PLAN9/bin/acme

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(
    git 
    zsh-autosuggestions
    zsh-syntax-highlighting
)

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
alias vim=nvim
alias react="cd /Users/oleksandrzhurba/development/ts/ITCH/React"
alias back="cd /Users/oleksandrzhurba/development/ts/ITCH/Node"
alias dev="~/development"
alias neofetch=hyfetch
alias nf=hyfetch
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi
. "/Users/oleksandrzhurba/.deno/env"

[[ -s "/Users/oleksandrzhurba/.gvm/scripts/gvm" ]] && source "/Users/oleksandrzhurba/.gvm/scripts/gvm"

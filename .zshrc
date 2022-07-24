if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"


source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"


# Which plugins would you like to load?
plugins=(
	git
	themes
	bgnotify
	archlinux
	colored-man-pages
	colorize
	command-not-found
	emoji-clock
	sudo
	tmux
	zsh-interactive-cd
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
export EDITOR=nvim
export BROWSER=firefox
#test
################################
##      ALIAS BINDINGS        ##
################################
alias zshconf="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias mybind="nvim ~/.conf/sxhkd/sxhkdrc"
alias e="sudo nvim"
alias v="nvim"
alias vim="nvim"
alias nvimconf='nvim ~/.config/nvim/init.vim'
alias sshmain='ssh -Y $server'
alias zshconf='nvim ~/.zshrc'
alias wmconf='nvim ~/.config/bspwm/bspwmrc'
alias bindconf='nvim ~/.config/sxhkd/sxhkdrc'
alias ..="cd .."
alias ...="cd ../.."
alias ...."cd ../../.."
alias v="nvim"
alias grep='grep --color=auto'
alias update='sudo pacman -Syu'
alias la='ls -a'
alias ll='ls -la'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias dots='/usr/bin/git --git-dir=$HOME/dotfile --work-tree=$HOME'
alias gitaa= 'git add *'
alias gita= 'git add'
alias gits= 'git status -s'

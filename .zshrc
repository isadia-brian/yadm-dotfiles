# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Uncomment the following line to use case-sensitive completion.
 CASE_SENSITIVE="true"


# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 14

plugins=(git sudo ufw conda-env zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete colored-man-pages)

source $ZSH/oh-my-zsh.sh


#starship
eval "$(starship init zsh)"
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8



# Preferred editor for local and remote sessions
export EDITOR='nvim'

source $HOME/.config/zsh/aliases.txt

# Compilation flags
#export ARCHFLAGS="-arch $(uname -m)"

# For a full list of active aliases, run `alias`.
#
# aliases


# zoxide
eval "$(zoxide init zsh)"

# neovim path
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# ouch path
export PATH="$PATH:/opt/ouch-x86_64/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# NOTE  FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git "
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git "


export FZF_DEFAULT_OPTS="--height 65% --layout=default --border --color=hl:#2dd4bf"

# Setup fzf previews
export FZF_CTRL_T_OPTS="--preview 'bat --color=always -n --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --icons=always --tree --color=always {} | head -200'"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/isadia/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/isadia/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/isadia/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/isadia/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# cargo environment
. "$HOME/.cargo/env"

#Goghs needs this for gnome-terminal
#export TERMINAL=gnome-terminal

#docker completions setup
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes


# bun completions
[ -s "/home/isadia/.bun/_bun" ] && source "/home/isadia/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# atuin
. "$HOME/.atuin/bin/env"

export ATUIN_NOBIND="true"
eval "$(atuin init zsh --disable-up-arrow)"

bindkey '^r' atuin-search-viins # Ctrl-r starts atuin in insert mode


# Yazi

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}



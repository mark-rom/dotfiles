# ~~~~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~~~~~~~~

setopt extended_glob null_glob

# form path from all necessary directories
path=(
    $path                       # keep existing PATH entries
    # $SCRIPTS
)

# Remove duplicate entries and non-existent directories
typeset -U path
path=($^path(N-/))

export PATH


# ~~~~~~~~~~~~~~~~~~ SSH ~~~~~~~~~~~~~~~~~~ 

# reserved section


# ~~~~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~

set -o vi

# export VISUAL=nvim
# export EDITOR=nvim
export TERM="tmux-256color"

# export BROWSER=""

# Directories

export DEV=$HOME/Dev


# ~~~~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS  # Don't save duplicate lines
setopt SHARE_HISTORY     # Share history between sessions


# ~~~~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~

if [[ "$OSTYPE" == darwin* ]]; then
    brew_prefix="$(brew --prefix)"
    fpath+=("${brew_prefix}/share/zsh/site-functions")
# else 
#     fpath+=($HOME/.zsh/pure)
fi

autoload -U promptinit; promptinit
prompt pure


# ~~~~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~

# TODO: add aliases for common dirs
alias dev='cd $DEV'
alias appfollow='cd $DEV/appfollow'

# ls
alias ls='ls --color=auto'


# ~~~~~~~~~~~~~~~~~~ Completion ~~~~~~~~~~~~~~~~~~

path+=~/.zfunc

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-complitions:$FPATH
fi

autoload -Uz compinit
compinit -u 

zstyle ':completion:*' menu select

# Example to install completion:
# talosctl completion zsh > ~/.zfunc/_talosctl


# ~~~~~~~~~~~~~~~~~~ Misc ~~~~~~~~~~~~~~~~~~

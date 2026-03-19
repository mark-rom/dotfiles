# SSH

# Environment Variables
set -o vi
# export VISUAL=nvim
# export EDITOR=nvim

# export BROWSER=""

# directories
export DEV=$HOME/Dev

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS  # Don't save duplicate lines
setopt SHARE_HISTORY     # Share history between sessions

# Prompt
# if [[ "$OSTYPE" == darwin* ]]; then
#     fpath+=("$brew -- prefix)/share/zsh/site-functions")
# else
#     fpath+=($HOME/.zsh/pure)
# fi

# autoload -U promptinit; promptinit
eval "$(starship init zsh)"

# Aliases
# TODO: add aliases for common dirs
alias dev='cd $DEV'
alias appfollow='cd $DEV/appfollow'

# ls
alias ls='ls --color=auto'

# Complition

# fpath+=~/.zfunc

# if type brew &>/dev/null; then
#     FPATH=$(brew --prefix)/share/zsh-complitions:$FPATH
# fi

autoload -Uz compinit
compinit -u 

# z style ":completion:*" menu select


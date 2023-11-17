#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
CORRECT_IGNORE='_*'
CORRECT_IGNORE_FILE='.*'

source "$HOME/.cargo/env"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

eval "$(~/.rbenv/bin/rbenv init - bash)"

autoload -Uz promptinit
promptinit
prompt pure

set -o vi

alias ls='exa -hGF --icons'
alias cat='bat'


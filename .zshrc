export PATH=$HOME/.bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# This is just robbyrussell with a git branch name capped at 20 chars.
ZSH_THEME="emakks"

plugins=(git)

source $ZSH/oh-my-zsh.sh

. /opt/asdf-vm/asdf.sh

export PATH=$HOME/.cargo/bin:$PATH

# Avoid warnings on WSL (because Erlang is compiled with latin1 strings to prevent crashes).
export ELIXIR_ERL_OPTIONS=+fnu

# Include .bashrc commands
if [ -n "$BASH_VERSION" -a -n "$PS1" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# aliases
alias ls='ls --color'

# exports 
export PS1='\[\e[35m\]\u@\h:\[\e[0m\]\[\e[32m\]\w\[\e[0m\] \$ '
export EDITOR='vim'
export BROWSER="brave"
export TERMINAL="alacritty"

# Paths
PATH="$HOME/.local/bin:$PATH"
          
if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep i3 || startx
fi
. "$HOME/.cargo/env"

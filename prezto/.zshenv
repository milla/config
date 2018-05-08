#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

PATH="/usr/local/lib/python3.6:/usr/local/lib/python3.6/site-packages:/System/Library/Frameworks/Python.framework/Versions/2.7:${PATH}:/Users/yuan/bin"
export PATH

# syntax highlighting for cheat
export CHEATCOLORS=true

# If you need to use these commands with their normal names, you
# can add a "gnubin" directory to your PATH from your bashrc like:
PATH="/usr/local/opt/make/libexec/gnubin:${PATH}"
export PATH

# Additionally, you can access their man pages with normal names if you add
# the "gnuman" directory to your MANPATH from your bashrc as well:
MANPATH="/usr/local/opt/make/libexec/gnuman:${MANPATH}"
export MANPATH

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# pipenv shell now create .venv under project dir
PIPENV_VENV_IN_PROJECT=true
export PIPENV_VENV_IN_PROJECT

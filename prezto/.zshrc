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

# default editor
export VISUAL=nvim
export EDITOR="${VISUAL}"

# fix python error about locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# default user and host for prompt configuration
export DEFAULT_USER=yuan
# export DEFAULT_HOST="missSilver"

# truns out it's not neccessary
# https://github.com/agnoster/agnoster-zsh-theme/blob/3ad94b659910c775a6560c45b1524d23d8c83b09/agnoster.zsh-theme#L73
# don't show user and host when on default user and host
# I changed it because in tmux ssh_clien will be true
# then host name and user name will be displayed even if I'm on my local machine
# prompt_context() {
#   local user=`whoami`
#   local currenthost=`hostname -f`

#   if [[ "$user" != "$DEFAULT_USER" || "$currenthost" != "$DEFAULT_HOST" ]]; then
#     prompt_segment $PRIMARY_FG default " %(!.%{%F{yellow}%}.)$user@%m "
#   fi
# }

#
# aliases)
#

alias tr="trash"
alias ac="aria2c"

# for fixing color problem on screen
alias ic="~/bin/invertcolor; ~/bin/invertcolor"

# to print church paper
alias chp="~/bin/churchpaper"

alias bashprofile="ec ~/.bash_profile"
alias zshrc="ec ~/.zshrc"
alias zshenv="ec ~/.zshenv"
alias preztorc="ec ~/.preztorc"

# show/hide dotted files in finder
alias showall="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hidesome="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"

alias exhentai='open "https://exhentai.org/?page=1&f_doujinshi=on&f_manga=on&advsearch=1&f_search=Chinese+full+color&f_srdd=4&f_sname=on&f_stags=on&f_apply=Apply+Filter"'

alias startrpc="aria2c --rpc-secret=XF234567rc"

# prevent or enable creation of .DS_Store files
alias disable-ds-store="defaults write com.apple.desktopservices DSDontWriteNetworkStores true"
alias enable-ds-store="defaults write com.apple.desktopservices DSDontWriteNetworkStores false"
alias remove-ds-store="find . -name '.DS_Store' -type f -delete"

alias f="fzf"

alias ec="emacsclient -a emac"

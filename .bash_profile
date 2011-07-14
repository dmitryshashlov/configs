export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Vim
################################################################################
alias v="mvim --remote-silent"
alias xco="open *.xcodeproj -a XCode"

# Git
################################################################################

# This enables git completion functionality
# Script from git-core distribution, when installed from MacPorts 
# located by default in /opt/local/share/doc/git-core/contrib/completion
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.sh/git-completion.bash

# Setting bash prompt
################################################################################
PS1='\e[0;32m\h:\e[m\W$(__git_ps1 " \e[0;31m[%s]\e[m")\$ '

alias gst="git status"
alias gca="git commit -a"
alias gaa="git add ."
alias glg="git lg"
alias glgt="git lgt"
alias glgw="git lgw"
alias gba="git branch -a"

# Other commands
################################################################################
alias ll="ls -l"
alias la="ls -lA"

alias ..="cd .."
alias ....="cd ../.."

# Fast links to system files
################################################################################
export _BP=~/.bash_profile
export _BH=~/.bash_history
export _VC=~/.vimrc
export _GC=~/.gitconfig

# Projects
################################################################################
export IP=~/Projects/ios
export BN=~/Projects/ios/bank-navigator
export MN=~/Projects/ios/menu-navigator
export ENVY=~/Projects/ios/envy
export OM=~/Projects/ios/order-manager
export TT=~/Projects/ios/Three20

# Funcions
################################################################################

# Find file on pattern $1
function ff() { find . -type f -iname '*'$*'*' -ls ; }

# Find all XCode Projects
function fxc() { find . -type d -iname '*.xcodeproj' ; }

# Find and open all xcode projects
function fxco() { find . -type d -iname '*.xcodeproj' -exec open -a XCode {} \; ; }

# Find file on pattern $1 and exec $2
function fe() { find . -type f -iname '*'$1'*' -exec "${2:-file}" {} \; ; }

# Find and open in MacVim
# function fv() { fe "$1" mvim --remote-silent ; }

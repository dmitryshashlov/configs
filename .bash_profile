export CLICOLOR=1
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Vim
################################################################################
alias v="mvim --remote-silent"
alias sv="sudo mvim --remote-silent"
alias xco="open *.xcodeproj -a XCode"

# Git
################################################################################

# This enables git completion functionality
# Script from git-core distribution, when installed from MacPorts 
# located by default in /opt/local/share/doc/git-core/contrib/completion
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.sh/git-completion.bash
source ~/.sh/git-flow-completion.bash

# Setting bash prompt
################################################################################
PS1='\e[0;32m\h:\e[m\W$(__git_ps1 " \e[0;31m[%s]\e[m")\$ '

alias gst="git status"
alias gc="git commit"
alias gca="git commit -a"
alias gaa="git add ."
alias glg="git lg"
alias glgt="git lgt"
alias glgw="git lgw"
alias gb="git branch"
alias gba="git branch -a"

alias gd="git_diff"
alias gdc="git_diff_cached"
# alias gdv="git_mvim_diff"

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
export OM=$IP/order-manager
export TN=$IP/tengri-news
export EF=$IP/envy/Frameworks/EnvyFoundation
export MKN=$IP/mkn
export PA=$IP/photo-ager
export SL=$IP/sms-light
export EM=$IP/echo-msk

# Functions
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

function git_diff() {
    if [[ -d ".git" ]] ; then
        git diff -w | mvim -R -f -
    fi
}

function git_diff_cached() {
    if [[ -d ".git" ]] ; then
        git diff -w --cached | mvim -R -f -
    fi
}

function git_mvim_diff() {
    if [[ -d ".git" ]] ; then
        mvim -p $(git diff --name-only) -s '/Users/shashlov/.vim/gdv_commands' 
    fi
}

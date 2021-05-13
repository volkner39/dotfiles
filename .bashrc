## ~/.bashrc

# Stay silent when non-interactive
[ -z "$PS1" ] && return

# Set vim for bash and as editor
set -o vi
export EDITOR=vim


# Increase the history capacity
export HISTFILESIZE=20000
export HISTSIZE=10000

# Remove duplicate lines in history
HISTCONTROL=ignoredups

# Format history
HISTTIMEFORMAT="%F %T "

# Turn multi-line commands in history into one
shopt -s cmdhist

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Add color to grep
export GREP_OPTIONS='--color=auto'

# find largest files in current directory
function flf() {
	sudo du -h -x -s -- * | sort -r -h | head -10;
}

alias ls='ls --color=auto'
alias ctab="sudo EDITOR=nano crontab -e"
PS1='[\u@\h \W]\$ '

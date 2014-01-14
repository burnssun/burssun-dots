#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

export PATH=~/.gem/ruby/2.0.0/bin:$PATH
export GEM_HOME=~/.gem/ruby/2.0.0
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias ..='cd ..'
PS1='[\u@\h \W]\$ '

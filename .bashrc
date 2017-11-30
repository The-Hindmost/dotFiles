# History settings {{{1
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend

# Terminal settings {{{1
# Colour settings {{{2
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
TERM=xterm-256color

# Enable sourcing of aliases file {{{1
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

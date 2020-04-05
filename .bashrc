# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi

find_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1/'
}

find_git_dirty_1() {
    local status=$(git status --porcelain 2> /dev/null)
    if [ ! $(git rev-parse --is-inside-work-tree 2> /dev/null) ]; then
        echo ''
    elif [[ "$status" != "" ]]; then
        echo '*'
    else
        echo ''
    fi
}

find_git_dirty_2() {
    local status=$(git status --porcelain 2> /dev/null)
    if [ ! $(git rev-parse --is-inside-work-tree 2> /dev/null) ]; then
        echo ''
    else
        echo ') '
    fi
}

if [ "$color_prompt" = yes ]; then
    export PS1="\n""${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\$(find_git_branch)\[\033[01;31m\]\$(find_git_dirty_1)\[\033[01;30m\]\$(find_git_dirty_2)\[\033[00m\]\u:\[\033[01;35m\]\w\[\033[00m\]$ "
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
        PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
        ;;
    *)
        ;;
esac


# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

# vi mode in command line
set -o vi
set keymap vi-insert

stty start undef



# make the touch pad tolerable
synclient HorizTwoFingerScroll=0
synclient PalmDetect=1
synclient PalmMinWidth=4
synclient PalmMinZ=50

xinput set-prop 12 "Synaptics Finger" 25, 30, 0
xinput set-prop 12 "Synaptics Palm Detection" 1
xinput set-prop 12 "Synaptics Palm Dimensions" 3, 3
xinput set-prop 12 "Synaptics Area" 200, 1000, 0, 0
                 
xinput set-prop 12 "Synaptics Finger" 25, 30, 0
xinput set-prop 12 "Synaptics Palm Detection" 1
xinput set-prop 12 "Synaptics Palm Dimensions" 3, 3
xinput set-prop 12 "Synaptics Area" 200, 1000, 0, 0


# spark
SPARK_HOME=/usr/local/spark-2.4.1-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$PATH

#java
# export JAVA_HOME="$(jrunscript -e 'java.lang.System.out.println(java.lang.System.getProperty("java.home"))')"


# Functions
function caps() { xmodmap -e 'keycode 0x42 = Caps_Lock'; }

function mcd() { mkdir $1; cd $1; }

function tns() { tmux new-session -s $1; }

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }

# prints all ip addresses
function ip() {
    ifconfig | perl -nle '/dr:(\S+)/ && print $1'
}

# git log find by commit message
function glf() { git log --all --grep="$1"; }

# tmux send command to right pane
function ts() {
    args=$@
    tmux send-keys -t right "$args" C-m 
}

function rs() {
    gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-up
    gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-down
    gsettings reset org.gnome.settings-daemon.plugins.media-keys volume-mute
}

# tmux
if [ -z "$TMUX" ]; then
    tmux attach -t sgd || tmux new -s sgd
fi




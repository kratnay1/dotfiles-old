export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="kush :"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias rem='old=$(pwd)'
alias ret='cd $old'
alias h='history'
alias c='cat'
alias ls='ls -GFh'
alias hs='history | grep'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../..'
alias l.='ls -d .*'
alias ds='du -ks *|sort -n'
alias al='alias'
alias sulast='sudo $(history -p !-1)'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias desk='cd ~/Desktop'
alias lab='cd ~/Desktop/Research/'
alias jaipur='cd ~/Intermediate_Programming/Project/jaipur/'
alias bashrc='vi ~/.bashrc'
alias ugrad='g++-mp-4.8'
alias prog='cd ~/Desktop/Data_Structures/'
alias checkstyle='java -jar checkstyle.jar -c jhu_checks.xml'
alias list='ls ${PATH//:/ } | grep'
alias autorec='cd /Users/Kushan/Library/Application Support/Microsoft/Office/Office 2011 AutoRecovery'
alias n="history | tail -2 | head -1 | tr -s ' ' | cut -d' ' -f3- | awk '{print \"\"\$0}' >> notes"
alias vimrc='vi ~/.vimrc'
alias bio='cd ~/Desktop/Comp_Bio'
alias prof='cd ~/Desktop/Prof_Comm'
alias sem='cd ~/Desktop/Virology'
alias edit='for i in $(\ls -d [1-9]*); do ./edit $i; done'
alias space='cd ~/Documents/MATLAB/Research/SpaceGroupDecomposition'
alias sshbio='ssh compbio2@kirin.kit.jhu.edu'
alias sftpbio='sftp compbio2@kirin.kit.jhu.edu'
alias vmd='/Applications/VMD\ 1.9.app/Contents/MacOS/startup.command'
alias conf='vi ~/.tmux.conf'
alias vi='vim'
alias g='vim --remove-silent'
alias .vim='cd ~/.vim'
alias dotfiles='cd ~/dotfiles'
alias ph='cd ~/Space_Group_Decomp/'
alias k='clear'
alias reload="exec $SHELL -l"

set -o vi
set keymap vi-insert


cpu () {
  top -l1 2>/dev/null | grep 'CPU usage:' | sed 's/^.*CPU/CPU/'
}


lt () {
        ls | tail -n 15;
}
cdl () 
{
    cd $1
    ls
}
function mk() {
  mkdir -p "$1" && cd "$1";
}


function manpdf() {
  man -t "${1}" | open -f -a /Applications/Preview.app/
}

# Find a file with a pattern in name:
function ff() { find . -type f -iname '*'$*'*' -ls ; }


# Function to return ip address:
function ip() {
  ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2
}   
    


source /etc/profile


fill=""
reset_style='\[\033[00m\]'
status_style=$reset_style'\[\033[0;90m\]' # gray color; use 0;37m for lighter color
prompt_style=$reset_style
command_style=$reset_style'\[\033[1;29m\]' # bold black
# Prompt variable:


PS1="$status_style"'\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\u:\w\$'"$command_style "

#PS1="$status_style"'$fill \t\n'"$prompt_style"'${debian_chroot:+($debian_chroot)}\u:\w\$'"$command_style "

# Reset color for command output
# (this one is invoked every time before a command is executed):
trap 'echo -ne "\033[00m"' DEBUG

function prompt_command {

# create a $fill of all screen width minus the time string and a space:
let fillsize=${COLUMNS}-9
fill=""
while [ "$fillsize" -gt "0" ]
do
fill=" ${fill}" # fill with underscores to work on
let fillsize=${fillsize}-1
done

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
bname=`basename "${PWD/$HOME/~}"`
echo -ne "\033]0;${bname}: ${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"
;;
*)
;;
esac

}
PROMPT_COMMAND=prompt_command

export LAB=$HOME/PDB
export PATH="/Users/Kushan/units174/bin:$PATH"
export Path="$PATH:~/scripts"

##
# Your previous /Users/Kushan/.bash_profile file was backed up as /Users/Kushan/.bash_profile.macports-saved_2014-10-05_at_16:02:55
##

# MacPorts Installer addition on 2014-10-05_at_16:02:55: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/Kushan/.bash_profile file was backed up as /Users/Kushan/.bash_profile.macports-saved_2014-10-24_at_21:16:12
##

# MacPorts Installer addition on 2014-10-24_at_21:16:12: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH



source $HOME/Lab/PyRosetta.MacOSX.Lion-r56325.64Bit/SetPyRosettaEnvironment.sh

export PATH=$PATH:$PYROSETTA

export PYROSETTA_DATABASE=$PYROSETTA/rosetta_database
export PYTHONPATH=/Library/Python/2.7/site-packages:$PYTHONPATH

#export PATH=/Users/Kushan/Downloads/phantomjs-1.9.8-macosx/bin:$PATH
export PATH=/Users/Kushan/Downloads:$PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL


#if [ ${TERM} != "dumb" ]; then
#
#if [ -f "$HOME/.bash_ps1" ]; then
#
#. "$HOME/.bash_ps1"
#
#fi
#
#fi

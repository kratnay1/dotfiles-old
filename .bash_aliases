# enable alias expansion
shopt -s expand_aliases  
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
# directories
alias ..='cd ..'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias desk='cd ~/Desktop'
alias sgd='cd ~/lab/sgd'
alias sgt='cd ~/lab/sgt-py/'
alias ml='cd ~/Machine_Learning'
alias te='cd ~/test'
alias hq='cd ~/tests/hq-assistant/'
alias o='cd ~/'
alias .vim='cd ~/.vim'
alias .colors='cd ~/.vim/colors/'
alias res='cd ~/lab/sgd/decomp/'
alias catcd='cd ~/catkin_ws/'
alias sbrcd='cd ~/sbr_workspace/'
alias apps='cd ~/Documents/apps/'
alias wm='wmctrl'
# edit files
alias vi='vim -X'
alias vr='vi ~/.vimrc'
alias br='vi ~/.bashrc'
alias ba='vi ~/.bash_aliases'
alias conf='vi ~/.tmux.conf'
alias econf='vi ~/.elinks/elinks.conf'
alias notes='vi ~/test/notes.txt'
alias gm='vi group_modules.py'
# git
alias g='git'
alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -am'
alias gd='git diff'
alias gi='git init'
alias gl='git log --graph --oneline --decorate'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcom='git checkout master'
alias gp='git pull'
alias gph='git push'

alias enc='TERM='xterm-256color'; elinks -no-connect sgt-py.readthedocs.io/en/latest'
alias t='todo.sh'
alias pyt="ctags -R --fields=+l --languages=python --python-kinds=-iv -f ./tags . $(python3 -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")"
alias c='cat'
alias h='history'
alias hs='history | g'
alias gr='grep' 
alias k='clear'
alias m='make'
alias sp='source ~/.profile'
alias sk='source ~/.profile; clear'
alias jn='jupyter notebook'
alias i='ipython3 --profile=sgd'
alias f='fg'
alias p='wc -l *'

alias md='make -C /home/kushan/lab/sgt-py/docs/ html'

alias fl='/home/kushan/xflux -z 20850 -k 2800'

alias lc='pacmd list-cards'
alias s='pacmd list-cards | grep "<a2dp_sink>"; pacmd list-cards | grep "<headset>"'

alias lt='gsettings set org.gnome.desktop.interface gtk-theme "Yaru"'
alias dt='gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"'

# tmux
alias ta='tmux attach'
alias tls='tmux ls'
alias tks='tmux kill-server'


alias useJava8='yes | sudo apt-get install oracle-java8-set-default && source ~/.bashrc'
alias useJava7='yes | sudo apt-get install oracle-java7-set-default && source ~/.bashrc'

# functions for vim
# tmux send command to right pane
function ts() {  
    args=$@
    tmux send-keys -t right "$args" C-m 
}

# nts : "Note to self"
function nts {
    args=$@
    echo "$args" >> ~/test/notes.txt
}

# set bluetooth card profile to a2dp_sink
function ap {
    index=$(pacmd list-cards | grep -B 1 bluez | head -1 | awk ' { print $2 } ')
    pacmd set-card-profile $index a2dp_sink
    pacmd list-cards | grep '<a2dp_sink>'
}

function bt {
    python3 ~/test/bluetooth_connect.py
    sink=$(pacmd list-cards | grep '<a2dp_sink>')
    echo $sink
    if [ -z "$sink" ]; then
        ap
    fi
    pacmd list-cards | grep '<headset>'
}



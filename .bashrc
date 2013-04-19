#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -n "$WINDOWID" ] && transset-df -i $WINDOWID >/dev/null

PS1='[\u@\h \W]\$ '

export EDITOR="vim"

#alias:
alias minecraft='java -jar /home/menzel/games/minecraft.jar'
alias ls='ls --color=auto'
alias top='htop'
alias irb='irb -r irb/completion'
alias xterm='xterm -bg black -fg limegreen'
alias shutdown='sudo shutdown -h now'
alias pacman='sudo pacman'
alias cpu='watch -t grep \"cpu MHz\" /proc/cpuinfo'
alias coot='sh /usr/share/coot/coot-Linux-x86_64-debian-gnu-linux-wheezy-sid-gtk2-python/bin/coot'
alias std='mupdf ~/Desktop/THM/mmnz21\ -\ Mein\ Stundenplan.pdf &'
alias studium='cd ~/Desktop/THM/4.Semester/'
alias als='alsamixer -g'
alias wl='wicd-gtk'
alias powertop='sudo powertop'
alias unlock='ecryptfs-mount-private'
alias lock='ecryptfs-umount-private'
alias R='R -q'
alias bc='bc -lq'
cdl(){
cd $1
ls
}
cds(){
cd $1
ls
}

#safety nets: 
alias rm='rm --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root'


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


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
alias cpu='watch grep \"cpu MHz\" /proc/cpuinfo'
alias coot='sh /usr/share/coot/coot-Linux-x86_64-debian-gnu-linux-wheezy-sid-gtk2-python/bin/coot'
alias std='mupdf ~/Desktop/THM/mmnz21\ -\ Mein\ Stundenplan.pdf &'
alias studium='cd ~/Desktop/THM/3.Semester/'
alias als='alsamixer -g'
alias wl='wicd-gtk'
alias powertop='sudo powertop'
alias unlock='ecryptfs-mount-private'
alias lock='ecryptfs-umount-private'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


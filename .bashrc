#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='[\u@\h \W]\$ '


[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

export EDITOR="vim"

xset -b


#alias:

alias minecraft='java -jar /home/menzel/games/minecraft.jar'
alias ls='ls --color=auto'
alias top='htop'
alias irb='irb -r irb/completion'
alias xterm='xterm -bg black -fg limegreen'
alias shutdown='sudo shutdown -h now'
alias cpu='watch -t grep \"cpu MHz\" /proc/cpuinfo'
alias std='z ~/Desktop/THM/mmnz21\ -\ Mein\ Stundenplan.pdf'
alias studium='cd ~/Desktop/THM/5.Semester/'
alias wl='wicd-gtk'
alias powertop='sudo powertop'
alias unlock='ecryptfs-mount-private'
alias lock='ecryptfs-umount-private'
alias R='R -q'
alias bc='bc -lq'
alias z='zathura'
alias fork='xterm -bg black -fg white &'
alias pse='feh -F ~/Desktop/tmp/pse.png'
alias thunderbird='icedove'
alias mensa='sh ~/mensa.sh'
alias dolphin='dolphin . >/dev/null 2> /dev/null'
alias okular='okular 2> /dev/null'
alias idea='/usr/lib/idea-IC-133.331/bin/./idea.sh'
alias hist='tig'

set -o vi
#safety nets: 
alias rm='rm --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root' 

PLPLOT_LIB=/usr/lib/emboss
PATH=/usr/lib/emboss:$PATH
BLASTDB=/home/menzel/.emboss
BLASTMAT=/home/menzel/.emboss
export BLASTDB
export BLASTDB
export PLPLOT_LIB PATH

export PERL_LOCAL_LIB_ROOT="/home/menzel/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/home/menzel/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/home/menzel/perl5";
export PERL5LIB="/home/menzel/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/menzel/perl5/bin:$PATH";


#printf "[menzel@serenity menzel]$ "
#sleep 4  
#exit 1

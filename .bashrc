#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='[\u@\h \W]\$ '


[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

export EDITOR="vim"

xset -b

stty erase ''

#alias:

alias ls='ls --color=always'
alias xterm='xterm -bg black -fg limegreen'
#alias shutdown='sudo shutdown -h now'
alias cpu='watch -t grep \"cpu MHz\" /proc/cpuinfo'
alias R='R -q'
alias bc='bc -lq'
alias z='zathura --fork'
alias lock='i3lock -c 000000 && systemctl suspend'

alias fork='urxvt &'

alias show='xterm -fg Black -bg Lightgray -fn 7x13 -fa "Source Code Pro:size=16" &'
alias key-mon='key-mon -l --nomouse --old-keys=5'


alias idea='/opt//idea-IU/bin/idea.sh'
alias pycharm='/opt/pycharm/bin/pycharm.sh'

alias make='clear && make'
alias lm='latexmk -xelatex'

alias studium='cd ~/Desktop/JLU/4.Sem/'
alias lfba='cd ~/Desktop/THM/lfba/'
alias swtp='cd ~/Desktop/THM/lfba/swtp/ws2016'
alias heart='cd ~/IdeaProjects/SiliconHeart_RPI/out/artifacts'

#set -o vi


# ssh:
alias enhort='ssh mmnz21@enhort.mni.thm.de'
alias ladon='ssh mmnz21@bioinf-ladon.mni.thm.de'



#safety nets: 
alias rm='rm --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root' 

alias gimr='/opt/bahn/gimr.sh'
alias lulw='/opt/bahn/lulw.sh'

#PLPLOT_LIB=/usr/lib/emboss
#PATH=/usr/lib/emboss:$PATH
#BLASTDB=/home/menzel/.emboss
#BLASTMAT=/home/menzel/.emboss
#export BLASTDB
#export BLASTDB
#export PLPLOT_LIB PATH

export PERL_LOCAL_LIB_ROOT="/home/menzel/perl5:$PERL_LOCAL_LIB_ROOT";
export PERL_MB_OPT="--install_base "/home/menzel/perl5"";
export PERL_MM_OPT="INSTALL_BASE=/home/menzel/perl5";
export PERL5LIB="/home/menzel/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/menzel/perl5/bin:$PATH";
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk/"
export PATH=$JAVA_HOME/bin:$PATH



LS_COLORS=$LS_COLORS:'di=1;30;43:' ; export LS_COLORS 

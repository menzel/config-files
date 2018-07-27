#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/local/etc/advanced-shell-history/config
export ASH_CFG_SYSTEM_QUERY_FILE
source /usr/local/lib/advanced_shell_history/sh/bash

PS1='[\u@\h \W]\$ '


[ -n "$XTERM_VERSION" ] && transset-df -a >/dev/null

export EDITOR="vim"


xset -b

stty erase ''

HISTSIZE=10000

#alias:

alias ls='ls --color=always'
alias xterm='xterm -bg black -fg limegreen'
#alias shutdown='sudo shutdown -h now'
alias cpu='watch -t grep \"cpu MHz\" /proc/cpuinfo'
alias R='R -q'
alias bc='bc -lq'
alias z='zathura --fork'
alias lock='sudo /usr/bin/systemctl suspend --no-ask-password && i3lock'

alias fork='urxvt &'

alias show='xterm -fg Black -bg Lightgray -fn 7x13 -fa "Source Code Pro:size=16" &'
alias key-mon='key-mon -l --nomouse --old-keys=5'


alias idea='/opt/idea-IU/bin/idea.sh'
alias pycharm='/opt/pycharm/bin/pycharm.sh'

alias make='clear && make'
alias lm='latexmk -xelatex'

alias studium='cd ~/Desktop/JLU/4.Sem/'
alias hg19='cd /home/menzel/Desktop/THM/promotion/enhort/dat/hg19'

alias prom='cd ~/Desktop/THM/promotion/'
alias nopeak='cd ~/Desktop/THM/promotion/projekte/peakcalling'

alias lfba='cd ~/Desktop/THM/lfba/'

alias last='ls -t | head -1'
alias zl='zathura --fork `last`'

alias hist='ash_query.py -q RCWD'

alias lpr='lpr -P Anderer_Drucker'

alias telegram='/opt/Telegram/Telegram'

#set -o vi


# ssh:
alias enhort='ssh enhort'
alias ladon='ssh ladon'
alias hydra='ssh hydra'
alias medusa='ssh mmnz21@bioinf-medusa.mni.thm.de'
alias kobis='ssh kobis'




#safety nets: 
alias rm='rm --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias chown='chown --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chmod='chmod --preserve-root' 

export JAVA_HOME='/usr/lib/jvm/java-8-jdk/'
export PATH=$JAVA_HOME/bin:$PATH


LS_COLORS=$LS_COLORS:'di=1;30;43:' ; export LS_COLORS 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

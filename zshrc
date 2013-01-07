HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

export PAGER=less
export EDITOR=vim
export VISUAL=vim

export MANPATH=/opt/local/man:/usr/share/man:/usr/local/share/man:/usr/local/man:/usr/X11/man
export PATH=/opt/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin

alias git=hub
if type compdef >/dev/null; then
   compdef hub=git
fi

# Load the colors function and execute it. This will define the fg
# (foreground) and bg (backgroud) color arrays.
autoload -U colors && colors
default="%{$fg[default]%}"
green="%{$fg[green]%}"
red="%{$fg[red]%}"

UID=`id -u`

if [[ $UID == "0" ]]; then
	PROMPT="$red%m[$default%~$red]%(!.#.%%) $default"
	#RPROMPT="$red<- %t$default"
else
	PROMPT="$green%m[$default%~$green]%(!.#.%%) $default"
	#RPROMPT="$green<- %t$default"
fi

alias ls='ls -F'
alias ll='ls -la'

# virtualenvwrapper (http://www.doughellmann.com/projects/virtualenvwrapper/)
source /usr/local/bin/virtualenvwrapper.sh

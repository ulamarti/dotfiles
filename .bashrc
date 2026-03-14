# env variables
export EDITOR="vim"
export TERM="screen-256color"
export PAGER="vim -M +MANPAGER -"
export DESKTOP="$HOME/Desktop"
export DOWNLOADS="$HOME/Downloads"
export DOCUMENTS="$HOME/Documents"
export TEMPLATES="$HOME/Templates"
export WORKSPACES="$HOME/Workspaces"
export PICTURES="$HOME/Pictures"
export VIDEOS="$HOME/Videos"
export MUSIC="$HOME/Music"
export REPOS="$HOME/Repos"
export DOTFILES="$REPOS/dotfiles"
export NOTES="$REPOS/notes"
export SCRIPTS="$REPOS/scripts"

# Path
export PATH="$SCRIPTS:$PATH"

# Aliases
unalias -a
alias vi=vim
alias rm=trash
alias tree='tree -a'
alias free='free -h'
alias diff='diff --color'
alias df='df -H'
alias sz='du -sh'
alias mk='makepkg -si'
alias cf='ls | wc -l'
alias ls='ls --color'
alias la='ls -lha'
alias l='c && ls -a1 | tail -n +3'
alias c='printf "\e[H\e[2J"'
alias f='find . | rg -i'
alias g='rg -i'
alias q='exit'
alias t='touch'
alias m='mkdir'
alias tmp='cd $(mktemp -d)'
alias 744='chmod 744'
alias dc='cd ..'
alias d='cd $DOTFILES'
alias n='cd $NOTES'
alias p='cd $REPOS/passwords'
alias h='cd $REPOS/homelab'
alias e='cd $REPOS/everland'

alias gc='git clone'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gs='git status'
alias gm='git merge'
alias gl='git log'
alias gf='git fetch'
alias gr='git reset'

# keybinds
bind 'TAB:menu-complete'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# auto cpmpletion
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'set menu-complete-display-prefix on'
bind 'set mark-symlinked-directories on'
bind 'set completion-query-items -1'
bind 'set page-completions off'
bind 'set visible-stats on'
bind 'set colored-stats on'
bind 'set bell-style none'

# shell options
shopt -s histappend
shopt -s checkwinsize
shopt -s expand_aliases
shopt -s globstar 2>/dev/null
shopt -s dotglob
shopt -s extglob

# history
export HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=10000

# dircolors
command -v dircolors &>/dev/null && eval "$(dircolors -b ~/.dircolors)"

# prompt
_ps1(){
   local P='$' d="${PWD##*/}"\
   b='\[\e[30m\]' r='\[\e[31m\]'\
   g='\[\e[32m\]' y='\[\e[33m\]'\
   l='\[\e[34m\]' m='\[\e[35m\]'\
   c='\[\e[36m\]' w='\[\e[37m\]'\
   x='\[\e[0m\]'

   [[ $EUID == 0 ]] && P='#' && u=$r && p=$y
   [[ $PWD = / ]] && d=/
   [[ $PWD = "$HOME" ]] && d='~'

   E="${VIRTUAL_ENV:+$c[${VIRTUAL_ENV##*/}] }"
   B=$(git branch --show-current 2>/dev/null)
   [[ $d = "$B" ]] && B=.
   countme="$USER@$(hostname):$d($B)\$ "

   [[ $B == master || $B == main ]] && R="$r" || R="$c"
   [[ -n "$B" ]] && B="$b($R$B$b)"

   PS1="$E$y\u$w@$l\h$w:$m$d$B$l$P$x "
}
PROMPT_COMMAND="_ps1"

cd(){
   builtin cd "$@" && l
}

# OpenClaw Completion
source "/Users/lamarti/.openclaw/completions/openclaw.bash"

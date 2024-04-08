# Lines configuredy zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/goblin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt PROMPT_SUBST
####-----------GIT PROMPT------------####

parse_git_dirty() {
  STATUS="$(git status 2> /dev/null)"
  if [[ $? -ne 0 ]]; then printf "[None"; else printf " ["; fi
  if echo "${STATUS}" | grep -c "renamed:"          &> /dev/null; then printf ">"; else printf ""; fi
  if echo "${STATUS}" | grep -c "branch is ahead:"  &> /dev/null; then printf "!"; else printf ""; fi
  if echo "${STATUS}" | grep -c "new file::"        &> /dev/null; then printf "+"; else printf ""; fi
  if echo "${STATUS}" | grep -c "Untracked files:"  &> /dev/null; then printf "?"; else printf ""; fi
  if echo "${STATUS}" | grep -c "modified:"         &> /dev/null; then printf "*"; else printf ""; fi
  if echo "${STATUS}" | grep -c "deleted:"          &> /dev/null; then printf "-"; else printf ""; fi
  printf "]" 
}


parse_git_branch() {
  git rev-parse --abbrev-ref HEAD 2> /dev/null
}

####-----------PROMPT------------####

PROMPT='%B%F{004} 󰣇 %B%F{163} %B%F{015}%n@%m %B%F{168}(⊙)(⊙) %B%F{015}%~ %B%F{006} %b%F{015}'
RPROMPT='%B%F{160} %F{004}$(parse_git_branch)%F{015}$(parse_git_dirty) %F{168}8===D%F{015}~%t%b'

####-----------Environment Variables-----------####

export HOST='archbtw'

####-----------Alias-------------####

alias ls="ls --color"
alias vim="nvim"
alias uprc="nvim /home/$USER/.zshrc"

####-----------Dircolors------------####

d=.dircolors
test -r $d && eval "$(dircolors $d)"

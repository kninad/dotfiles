##### Custom Includes #####

## OhMyZsh ##
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh


## zsh prompt modification
NEWLINE=$'\n'
PROMPT="%{$fg_bold[white]%}%n %{$fg[blue]%}@ %{$fg_bold[yellow]%}%m"
PROMPT+=" %(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
PROMPT+='${NEWLINE}$ '

# PROMPT="%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) %{$fg[cyan]%}%c%{$reset_color%}"

shpwd() {
  echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}
}

PROMPT='
%{$fg[red]%}[$(date "+%Y-%m-%d %H:%M:%S")] %{$fg[cyan]%}$(shpwd)%{$fg[green]%}$(virtualenv_prompt_info) $(git_prompt_info) %{$reset_color%}
➜ '

ZSH_THEME_VIRTUALENV_PREFIX=" [venv: "
ZSH_THEME_VIRTUALENV_SUFFIX="]"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

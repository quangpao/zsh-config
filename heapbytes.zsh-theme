#Author : Heapbytes <Gourav> (https://github.com/heapbytes)

PROMPT='
┌─[%F{blue} %~%f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
└─➜ '

ZSH_THEME_GIT_PROMPT_PREFIX="%F{#89C9D9}\ue727 -> (%F{#89C9D9}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")$reset_color"

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlp2s0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig wlp2s0 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/deva/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%(?.%F{blue}⏺.%F{9}⏺)%f %F{blue}%~%f %F{magenta}${vcs_info_msg_0_}%f$ '
RPROMPT='%F{green}⏱  %*%f'

# Aliases
alias ll='ls -l'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias purge='sudo apt purge'
alias remove='sudo apt remove'
alias autoremove='sudo apt autoremove'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey ";5C" forward-word
bindkey ";5D" backward-word
bindkey ";3C" forward-word
bindkey ";3D" backward-word

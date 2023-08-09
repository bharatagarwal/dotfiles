export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/bin:$PATH:/Users/bharat/.local/bin:/opt/local/bin:$HOME/bin:$HOME/go/bin:$HOME/.cargo/bin:/Users/bharat/.gem/ruby/2.6.0/bin:/Users/bharat/Library/Python/3.11/bin"
export CGO_ENABLED=1
export editor=vim
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LESSOPEN="|/opt/homebrew/bin/lesspipe.sh %s"
export LESS=" -S"

source ~/aliases/aliases
export TABSIZE=4
source ~/.fzf.zsh

_sgpt_zsh() {
_sgpt_prev_cmd=$BUFFER
BUFFER+="⌛"
zle -I && zle redisplay
BUFFER=$(sgpt --shell <<< "$_sgpt_prev_cmd")
zle end-of-line
}
zle -N _sgpt_zsh
bindkey ^l _sgpt_zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

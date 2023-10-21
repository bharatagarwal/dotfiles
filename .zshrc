eval "$(/opt/homebrew/bin/brew shellenv)"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(colored-man-pages)
source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH:/Users/bharat/.local/bin:/opt/local/bin:$HOME/bin:$HOME/go/bin:$HOME/.cargo/bin:/Users/bharat/.gem/ruby/2.6.0/bin:/Users/bharat/Library/Python/3.11/bin:/Applications/Xcode-14.3.1.app/Contents/Developer/usr/bin/:/opt/homebrew/opt/llvm/bin"
export CGO_ENABLED=1
export editor=vim
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
export LESSOPEN="|/opt/homebrew/bin/lesspipe.sh %s"
export LESS="--hilite-search --ignore-case --squeeze-blank-lines --mouse --wordwrap"

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

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PAGER='less --mouse --raw-control-chars'
export EDITOR=vim
eval $(thefuck --alias f)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

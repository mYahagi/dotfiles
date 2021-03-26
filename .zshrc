export EDITOR=vim
eval "$(direnv hook zsh)"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export XDG_BASE_HOME='~/.config'

alias nvimf='nvim $(fzf)'
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}
export PATH="$PATH:/usr/local/go/bin"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

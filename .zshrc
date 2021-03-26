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
export GOPATH=$HOME/go
export GO111MODULE=auto
export XDG_BASE_HOME='~/.config'
export PATH=$PATH:$GOPATH/bin
export PATH="$GOENV_ROOT/bin:$PATH"
export GOENV_ROOT="$HOME/.goenv"
eval "$(goenv init -)"
export PATH="$GOROOT/bin/$PATH"
export PATH="$PATH:$GOPATH/bin"

alias nvimf='nvim $(fzf)'
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

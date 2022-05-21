export EDITOR=vim
alias vim='nvim'
export XDG_BASE_HOME='~/.config'
export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
eval "$(gh completion -s zsh)"
eval "$(direnv hook zsh)"

# Ruby
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"
# Node
export PATH=$HOME/.nodebrew/current/bin:$PATH
# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# Go
export PATH="$PATH:/usr/local/go/bin"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH=$(go env GOPATH)/bin:$PATH
eval "$(goenv init -)"
# Rust
export PATH=$HOME/.cargo/bin:$PATH

alias nvimf='nvim $(fzf)'
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}


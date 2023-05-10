export EDITOR=vim
alias vim='nvim'
export XDG_BASE_HOME='~/.config'
export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LIBRARY_PATH=$LIBRARY_PATH:/user/lib

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(gh completion -s zsh)"
eval "$(direnv hook zsh)"

# MySQL
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@5.7/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@5.7/include"

# Ruby
eval "$(rbenv init -)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias nvimf='nvim $(fzf)'
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

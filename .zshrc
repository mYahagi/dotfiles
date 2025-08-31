export EDITOR=vim
alias vim='nvim'
export XDG_BASE_HOME='~/.config'
export PATH=$PATH:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
export LIBRARY_PATH=$LIBRARY_PATH:/user/lib

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(gh completion -s zsh)"
eval "$(direnv hook zsh)"

# Ruby
eval "$(rbenv init -)"

alias nvimf='nvim $(fzf)'
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

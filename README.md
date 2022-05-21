# my_pc_setting
MacのPythonを3系に向けるの、いつも忘れるけど[ここ](https://prog-8.com/docs/python-env)通りに設定すると安心

## prepare
```shell
git clone https://github.com/mYahagi/dotfiles.git
brew install neovim
brew install maven
brew install nodebrew
brew install pyenv
brew install mysql@5.7
brew install fzf
brew install ripgrep

cd pc_setting
cp .zshrc ~/
source ~/.zshrc

cp dein.toml ~/.config/nvim/
cp init.vim ~/.config/nvim/
```

## Original key bind
### Neovim
#### easy-motion
|  コマンド  |  動作  |
| ---- | ---- |
|  s (任意の２文字)  |  割り当てられたキーバインドで移動  |

#### NERDTree
|  コマンド  |  動作  |
| ---- | ---- |
|  Ctrl+e  |  open and close tree  |

#### fzf/ripgrep
|  コマンド  |  動作  |
| ---- | ---- |
|  fz  |  ファイル名であいまい検索  |
|  rg  |  全検索  |

---

### cui
|  コマンド  |  動作  |
| ---- | ---- |
|  nvimf  |  nvim $(fzf)  |
|  fd  |  あいまい検索で移動  |


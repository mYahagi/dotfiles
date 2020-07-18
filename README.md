# my_pc_setting

## prepare
```shell
git clone https://github.com/mYahagi/pc_setting.git
brew install neovim
brew install maven
brew install nodebrew
brew install pyenv
brew install mysql@5.7

cd pc_setting
cp .zshrc ~/
source ~/.zshrc

cp dein.toml ~/.config/nvim/
cp init.vim ~/.config/nvim/
```

## Original key bind
### Neovim
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


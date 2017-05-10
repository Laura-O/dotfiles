# My dotfiles

## General

### Vundle
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### ZSH
**Oh-My-ZSH!**
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Linux
### Switch off caps lock & map to Escape
xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"

## Mac
Map keys with Karabiner:
```
brew install Caskroom/cask/karabiner-elements
```

**MacVim**
MacOsX has an old version of Vim, replace it with MacVim:

```
$ brew install macvim --override-system-vim
```

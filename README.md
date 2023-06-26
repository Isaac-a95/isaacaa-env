# Install

## Vim config

```
cp vimrc ~/.vimrc
if [ ! -f ~/.vim/bundle/Vundle.vim/README.md ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
```

## Bashrc

```
cp git_completion.sh ~/.git_completion.sh
chmod u+x  ~/.git_completion.sh
cp bash_isaacaa.sh ~/.bash_isaacaa.sh
chmod u+x  ~/.bash_isaacaa.sh
echo ". ~/.bash_isaacaa.sh" >> ~/.bashrc
source ~/.bashrc
```

## Custom Colemak-DH

```
cp /usr/share/X11/xkb/rules/evdev.xml /tmp/evdev.xml.old
sudo cp evdev.xml /usr/share/X11/xkb/rules/evdev.xml
cp /usr/share/X11/xkb/symbols/us /tmp/us.old
sudo cp us /usr/share/X11/xkb/symbols/us
```

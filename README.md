Source: https://www.atlassian.com/git/tutorials/dotfiles

# Installation

note: copied from ark/bare script
```
echo -ne "\nalias config='/usr/bin/git --git-dir=\$HOME/.cfg/ --work-tree=\$HOME'" >> ~/.zshrc
source ~/.zshrc
echo ".cfg" >> ~/.gitignore
git clone --bare https://github.com/thlmenezes/.cfg.git $HOME/.cfg
config config --local status.showUntrackedFiles no
```

# Usage

## Apply Backup

```
config checkout
```

## Add file to backup

```
config add .bashrc
config commit -m "feat(bashrc): add config file"
config push
```

# ARK

Ark is a folder that contains setup scripts for the clean manjaro linux install, downloading my commonly used apps and code extensions

```
./bare
```

```
./ark `grep -v '^#' programs`
```

```
./code_ext `cat code-extensions`
```

```
./gnome_ext `cat gnome-extensions`
```

```
./studio
# requires file studio.desktop
```
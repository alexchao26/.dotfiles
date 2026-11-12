# dotfiles
dotfiles for a macOS setup.

This was setup using a bare git repo, per an [Atlassian article](https://www.atlassian.com/git/tutorials/dotfiles).


## Includes
- [zsh](./.zsh) aliases everywhere
- [oh-my-zsh](https://ohmyz.sh/) customizations
- [pure prompt](https://github.com/sindresorhus/pure)
    - `brew install pure`
- VS Code (settings.json and keybindings.json)
- VLC config for my preferred keyboard mapping

## Setup
1. Install homebrew
    1. `brew install node go pure`
1. Setup ssh auth to github

1. Clone this repo using the `--bare` flag into the root directory.
    
```sh
cd ~

git clone --bare git@github.com:alexchao26/.dotfiles.git $HOME/.dotfiles

# temporary, gets aliased to `dotfile` later
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 

config config --local status.showUntrackedFiles no
config status # expect weird state showing "deleted" here

# "unpacks" bare checkout into root directory, so those files are no longer "deleted" to git
config checkout --force

# reload
source ~/.zshrc
```

## Adding New Changes
Use the `dotfile` alias as you would `git`.

```shell
dotfile add ~/some/path/file.file
dotfile commit -m 'added file.file'
dotfile push
```

## General macOS Settings & Programs I like
- [Alfred](https://www.alfredapp.com/) to replace native Spotlight
- [Rectangle](https://rectangleapp.com/) for window management
    - I (unfortunately?) paid for [Magnet](https://apps.apple.com/us/app/magnet/id441258766?mt=12) when I first got a Mac so I just use that, but Rectangle is open source and free :)

## Misc Terminal Setup
(Optional) Setup symlink to iCloud to $HOME

    `ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ./icloud`
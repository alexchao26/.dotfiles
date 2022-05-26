# dotfiles
dotfiles for a macOS setup.

This was setup using a bare git repo, per an [Atlassian article](https://www.atlassian.com/git/tutorials/dotfiles).


## Includes
- [zsh](./.zsh) aliases everywhere
- [oh-my-zsh](https://ohmyz.sh/) customizations
- VS Code (settings.json and keybindings.json)
- LaunchAgents ([learn more here](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html))
    - to remap/swap the ESC and CAPS keys
    - to schedule the running of a command that excludes node_modules from Time Machine backups
- VLC config for my preferred keyboard mapping

## Setup
1. Clone this repo using the --bare flag into the root directory.
    
    `git clone --bare git@github.com:alexchao26/.dotfiles.git`

1. Reload the terminal window, so the .zshrc config adds an alias for `dotfile`

1. Use the `dotfile` alias to checkout these files to the new system. It might throw errors if these files already exist - if so back them up, or delete them.

    `dotfile checkout`

1. Don't show untracked files in the copied bare file

    `dotfile config --local status.showUntrackedFiles no`

1. (Optional) Setup symlink to iCloud to $HOME

    `ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ./icloud`

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
- Command to remove animation time of dock un-hiding: `defaults write com.apple.dock autohide-time-modifier -float 0; killall Dock`

### VSCode Extensions
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
- [Go](https://marketplace.visualstudio.com/items?itemName=golang.Go)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)

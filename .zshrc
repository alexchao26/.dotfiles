export ZSH="/Users/chao/.oh-my-zsh"
ZSH_THEME="custom-zhann" # stored at ~/.oh-my-zsh/themes/

# allow zsh to update without prompt
DISABLE_UPDATE_PROMPT="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# git alias for dotfile specific storage
alias dotfiles="git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"

# Source all zsh files in ~/.zsh folder, separeted by shortcut type
for f in ~/.zsh/*.zsh; do
  source "$f"
done

# autocompletion
autoload -U compinit; compinit

alias vhist="vim ~/.zsh_history"


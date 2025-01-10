export ZSH="/Users/chao/.oh-my-zsh"
ZSH_THEME=""

# allow zsh to update without prompt
DISABLE_UPDATE_PROMPT="true"

# plugins=(git)
source $ZSH/oh-my-zsh.sh

# Source all zsh files in ~/.zsh folder, separeted by shortcut type
for f in ~/.zsh/*.zsh; do
  source "$f"
done

# pure prompt is much faster for monorepos: https://github.com/sindresorhus/pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -Uz promptinit; promptinit
prompt pure

# ┌────────────────────────────────────────────────────── user
# │      ┌─────────────────────────────────────────────── host
# │      │           ┌─────────────────────────────────── path
# │      │           │          ┌──────────────────────── git:branch
# │      │           │          │     ┌────────────────── git:dirty
# │      │           │          │     │ ┌──────────────── git:action
# │      │           │          │     │ │        ┌─────── git:arrow
# │      │           │          │     │ │        │ ┌───── git:stash
# │      │           │          │     │ │        │ │ ┌─── execution_time
# │      │           │          │     │ │        │ │ │
# zaphod@heartofgold ~/dev/pure master* rebase-i ⇡ ≡ 42s
# venv ❯
# │    │
# │    └───────────────────────────────────────────────── prompt
# └────────────────────────────────────────────────────── virtualenv (or prompt:continuation)

# foregroundColor='#eff0eb'
# backgroundColor='#282a36'
# red='#ff5c57'
# green='#5af78e'
# yellow='#f3f99d'
# blue='#57c7ff'
# magenta='#ff6ac1'
# cyan='#9aedfe'
# borderColor='#222430'
# cursorColor='#97979b'

blue='#57c7ff'
zmodload zsh/nearcolor
zstyle :prompt:pure:path color $blue


# git alias for dotfile specific storage
alias dotfiles="git --git-dir=$HOME/.dotfiles.git --work-tree=$HOME"

# autocompletion
autoload -U compinit; compinit

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# * ############################################################################
# * Git aliases
# * ############################################################################

# commit with message (overwrites a default)
alias gc="git commit -m"

# commit all with message (overwrites a default)
alias gca="git add . && git commit -m"

# push/pull
alias gpb='git push origin "$(current_branch)"'
alias gpsu="git push --set-upstream"
alias gpull='git pull origin "$(current_branch)"'

alias gs="git status"
alias gr="git remote -v"
alias gch="git checkout"
alias glo="git log --oneline"
alias gd="git diff --word-diff"
alias gbc="git branch | cat"


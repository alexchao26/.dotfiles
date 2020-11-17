# * ############################################################################
# * Git aliases
# * ############################################################################

# commit with message (overwrites a default)
alias gc="git commit -m"

# commit all with message (overwrites a default)
alias gca="git add . && git commit -m"

# push
# gpb is the same as built-in ggp
alias gpb='git push origin "$(current_branch)"'
alias gpsu="git push --set-upstream"

# pull
alias gpull='git pull origin "$(current_branch)"'

# status
alias gs="git status"

# check remotes
alias gr="git remote -v"

# checkout to branch (add -b to make new branch)
alias gch="git checkout"

# git log oneline alias
alias glo="git log --oneline"

# archive function for HEAD of git repo
garchive() {
  if [ "$1" = "" ]; then # zero indexed
    echo "no file name provided"
    echo "try \"garchive archive.zip\""
  else
    git archive -o $1 HEAD
    echo "zipped git HEAD to $1"
  fi
}
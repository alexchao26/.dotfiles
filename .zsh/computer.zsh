# * ############################################################################
# * Standard shell command aliases
# *   basically wrappers around standard commands
# * ############################################################################

# remap `rm` to make deleting files reversible
rm () {
  for ((i = 1; i <= $#; i++ )); do
    mv $argv[i] ~/.Trash
  done
}

# alias to reload config into existing zsh terminal instance
alias reload=". ~/.zshrc"

# alias to mkdir and cd into it
mkcd() {
  mkdir $1 && cd $1
}

# list in single column
alias lso="ls -1"

# aliases to show all active ports and to kill a specified port
alias portz="echo \"lsof -nP +c 15 | grep LISTEN\" && lsof -nP +c 15 | grep LISTEN"
killport() {
  kill $(lsof -t -i:$1)
}

# default programs
alias vlc="open -a VLC"
alias chrome="open -a Google\ Chrome"
alias canary="open -a Google\ Chrome\ Canary"
alias preview="open -a Preview"

# just type filename into command line to open the file
alias -s md=code
alias -s css=code
alias -s go=code
alias -s js=code
alias -s jsx=code
alias -s sass=code
alias -s scss=code
alias -s txt=code
alias -s yaml=code
alias -s yml=code

alias -s mp4=vlc
alias -s mkv=vlc
alias -s mov=vlc
alias -s m4a=vlc

alias -s pdf=chrome
alias -s html=chrome
alias -s jpg=chrome
alias -s jpeg=chrome
alias -s png=chrome
alias -s gif=chrome

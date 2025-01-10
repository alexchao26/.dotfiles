# * ############################################################################
# * Standard shell command aliases
# *   basically wrappers around standard commands
# * ############################################################################

# aliases to show all active ports and to kill a specified port
alias portz="echo \"lsof -nP +c 15 | grep LISTEN\" && lsof -nP +c 15 | grep LISTEN"
killport() {
  kill $(lsof -t -i:$1)
}

# default programs
alias vlc="open -a VLC"
alias chrome="open -a Google\ Chrome"
alias chromedev="open -a Google\ Chrome\ Dev"
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

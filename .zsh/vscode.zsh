# * ############################################################################
# * VS Code (`code` command) aliases
# * ############################################################################

alias co="code"
alias con="code -n"
alias co.="code -n ."

alias notes="~/Documents/notes-md"
# makes a new markdown files for notes in ~/Documents/notes-md
newnote() {
  DATE=20$(date +%y.%m.%d)
  
  # read -p "Enter topic: (note) " NOTE_NAME
  NOTE_NAME=""
  vared -p "Enter topic: (note) " -c NOTE_NAME

  # if empty, set to "note"
  if [[ $NOTE_NAME == "" ]]; then
    NOTE_NAME=note
  fi

  FILENAME=$HOME/Documents/notes-md/$DATE-$NOTE_NAME.md

  # echo filename to user, then open in VS Code
  echo $FILENAME
  code -n $FILENAME
}

# make multiple files & open them in VSCode
tcode() {
  for ((i = 1; i <= $#; i++ )); do
    touch $argv[i] && code $argv[i]
  done
}

# copy a file to multiple locations, open them in vscode
cpcode() {
  for ((i = 2; i <= $#; i++ )); do
    cp $1 $argv[i] && code $argv[i]
  done
}


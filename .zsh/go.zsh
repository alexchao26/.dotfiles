# * ############################################################################
# * Go aliases
# * ############################################################################
export PATH=$PATH:$HOME/go/bin

# paths
alias alexchao26="~/go/src/github.com/alexchao26"

gor() {
  if [ "$1" = "" ]; then
    echo "go run main.go"
    go run main.go
  else
    go run $1
  fi
}

# colorize the go test output
# escape $, " (within double quotes) and \ (escape itself)
alias go-test-v="go test -v . | sed ''/PASS/s//\$(printf \"\\033[32mPASS\\033[0m\")/'' | sed ''/FAIL/s//\$(printf \"\033[31mFAIL\\033[0m\")/'' | sed ''/RUN/s//\$(printf \"\033[4;37mRUN\\033[0m\")/''"

# pipe an output into this alias, i.e. make test | colorize
alias colorize="sed ''/PASS/s//\$(printf \"\\033[32mPASS\\033[0m\")/'' | sed ''/FAIL/s//\$(printf \"\033[31mFAIL\\033[0m\")/'' | sed ''/RUN/s//\$(printf \"\033[4;37mRUN\\033[0m\")/''"

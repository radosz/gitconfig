COLOR_NC='\e[0m' # No Color
COLOR_WHITE='\e[1;37m'
COLOR_BLACK='\e[0;30m'
COLOR_BLUE='\e[0;34m'
COLOR_LIGHT_BLUE='\e[1;34m'
COLOR_GREEN='\e[0;32m'
COLOR_LIGHT_GREEN='\e[1;32m'
COLOR_CYAN='\e[0;36m'
COLOR_LIGHT_CYAN='\e[1;36m'
COLOR_RED='\e[0;31m'
COLOR_LIGHT_RED='\e[1;31m'
COLOR_PURPLE='\e[0;35m'
COLOR_LIGHT_PURPLE='\e[1;35m'
COLOR_BROWN='\e[0;33m'
COLOR_YELLOW='\e[1;33m'
COLOR_GRAY='\e[0;30m'
COLOR_LIGHT_GRAY='\e[0;37m'

# GIT
parse_git_branch() {

     GITBR=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/[*]\|[[:space:]]//g')

     if [ "$GITBR" != "" ]; then
        echo ["$GITBR"]
     fi
}
export PS1="$COLOR_LIGHT_BLUE\u@\h $COLOR_YELLOW\w$COLOR_LIGHT_RED \$(parse_git_branch) $COLOR_WHITE: "

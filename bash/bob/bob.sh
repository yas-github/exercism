#!/usr/bin/env bash

#!/usr/bin/env bash

# 26 tests, 5 failures
main() {
  if [[ $# != 1 || ${#1} == 0 || $1 =~ ^[[:space:]]$ ]]; then
    echo "Fine. Be that way!"
  elif [[ $1 =~ ^([0-9A-Z]| |[[:punct:]])+[A-Z]+\!?[^\?]$ ]]; then
    echo "Whoa, chill out!"
  elif [[ $1 =~ ^([A-Z]| |[[:punct:]])+\?$ ]]; then
    echo "Calm down, I know what I'm doing!"
  elif [[ $1 =~ ^.*\?\ *$ ]]; then
    echo "Sure."
  else
    echo "Whatever."
  fi
}

main "$@"

# set -eu

# main() {
#     local -i bits=0
#     if (( $# > 0 )); then
#         [[ $1 == *[[:lower:]]* ]] && (( bits |= 1 ))
#         [[ $1 == *[[:upper:]]* ]] && (( bits |= 2 ))
#         [[ $1 == *[[:digit:]]* ]] && (( bits |= 4 ))
#         [[ $1 =~ \?[[:space:]]*$ ]] && (( bits |= 8 ))
#     fi

#     local res=""
#     res+=$(( bits >> 3 & 1 ))
#     res+=$(( bits >> 2 & 1 ))
#     res+=$(( bits >> 1 & 1 ))
#     res+=$(( bits >> 0 & 1 ))
#     case $res in
#         1*10 ) echo "Calm down, I know what I'm doing!" ;;
#         **10 ) echo "Whoa, chill out!" ;;
#         1*** ) echo "Sure." ;;
#         0000 ) echo "Fine. Be that way!" ;;
#         *    ) echo "Whatever." ;;
#     esac
# }

# main "$@"

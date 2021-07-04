#!/usr/bin/env bash

main() {
  result="$@"

  if [ $(($@ % 3)) -eq 0 ]; then
    result='Pling'

    if [ $(($@ % 5)) -eq 0 ]; then
      result="${result}Plang"

      if [ $(($@ % 7)) -eq 0 ]; then
        result="${result}Plong"
        echo ${result}
        exit 0
      fi
    fi

    if [ $(($@ % 7)) -eq 0 ]; then
      result="${result}Plong"
    fi

    echo ${result}
    exit 0
  fi

  if [ $(($@ % 5)) -eq 0 ]; then
    result='Plang'

    if [ $(($@ % 7)) -eq 0 ]; then
      result="${result}Plong"
    fi
    echo ${result}
    exit
  fi

  if [ $(($@ % 7)) -eq 0 ]; then
    result='Plong'
  fi
  echo ${result}
}

main "$@"
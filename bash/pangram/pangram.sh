#!/usr/bin/env bash

main() {
  atoz='abcdefghijklmnopqrstuvwxyz'

  chars=$(echo ${1,,} | sed -e 's/[\.\"]//g')
  for (( i=0; i<${#chars}; i++ )); do
    atoz=${atoz//${chars:i:1}/}
  done
  [[ $atoz == '' ]] && echo true || echo false
}

main "$@"
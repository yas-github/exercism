#!/usr/bin/env bash

main() {
  arr=(${1//[\-,_\*]/ })
  word=''
  for (( i=0; i<${#arr[@]}; i++ )); do
    word+=${arr[i]:0:1}
  done
  echo ${word^^}
}

main "$@"
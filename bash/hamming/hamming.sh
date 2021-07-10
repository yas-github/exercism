#!/usr/bin/env bash

main() {
  [[ $# != 2 ]] && echo "Usage: hamming.sh <string1> <string2>" && exit 1
  [[ ${#1} != ${#2} ]] && echo "left and right strands must be of equal length" && exit 1

  # 引数の文字列を比較して差の数を表示したい
  count=0
  for (( i=0; i<=${#1}; i++ )); do
      [ "${1:$i:1}" != "${2:$i:1}" ] && (( count++ ))
  done
  echo $count
}

main "$@"
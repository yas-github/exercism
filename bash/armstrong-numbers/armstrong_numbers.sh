#!/usr/bin/env bash

main() {
  num_arr=($(echo $1 | fold -s1))
  digit=${#num_arr[@]}
  sum=0
  for (( i=0; i<$digit; i++ )); do
    sum=$((${num_arr[i]} ** $digit + $sum))
  done
  [[ $1 == $sum ]] && echo "true" || echo "false"
}

main "$@"

# main() {
#   num=$1
#   digit=${#1}

#   sum=0
#   for ((i=0; i<$digit; i++)); do
#     (( sum+=(( ${num:i:1} ** $digit )) ))
#   done
#   (( sum == num )) %% echo true || echo false
# }
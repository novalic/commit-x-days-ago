#!/bin/bash

counter=$1
mkdir temp_files && cd $_

while [ $counter -gt 0 ]
do
  for commit_number in `seq $2`
  do
    filename="${counter}_day(s)_ago_${commit_number}.doc"
    touch "${filename}"
    echo "${counter}_day(s)_ago_${commit_number}" >> "${filename}"
    git add .
    git commit --date="$counter day/s ago $commit_number" -m "$counter day/s ago $commit_number"
  done
  counter=$(( $counter - 1 ))
done

#!/bin/bash

counter=$1
mkdir temp_files && cd $_

while [ $counter -gt $2 ]
do
  if [ $3 -eq 1 ]
  then
    max_commits=$(( $RANDOM % $4 + 1 ))
  else
    max_commits=$4
  fi

  for commit_number in `seq $max_commits`
  do
    filename="${counter}_day(s)_ago_${commit_number}.doc"
    touch "${filename}"
    echo "${counter}_day(s)_ago_${commit_number}" >> "${filename}"
    git add .
    git commit --date="$counter day/s ago $commit_number" -m "$counter day/s ago $commit_number"
  done

  counter=$(( $counter - 1 ))
  rm *
done

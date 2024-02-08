#!/bin/bash
paragraph=""
IFS=''
if [[ $1 == "" ]]; then
  echo missing paramater
  exit -1
fi
echo Generating $1
read n
> $1
tmux send-keys -t0 F5
exec 3<> .demo/$1.demo2
read -r -u 3 line
while [[ $line != '----' ]]; do
  while [[ $line != '--' ]]; do
    echo "$line" >> $1
    tmux send-keys -t0 F5
    tmux send-keys -t0 G
    read -r -u 3 line
  done
    read
    read -r -u 3 line
done
echo finished generating $1

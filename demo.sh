#!/bin/bash
paragraph=""
IFS=''
> playbook.yaml
exec 3<> ./playbook.demo.yaml
read -r -u 3 line
while [[ $line != '----' ]]; do
  while [[ $line != '--' ]]; do
    echo "$line" >> playbook.yaml
    read -r -u 3 line
  done
    read
    read -r -u 3 line
done

#!/bin/bash

hosts="/etc/hosts"

# DNS to add
declare -a arr=(
  "127.0.0.1   localhost"
  "127.0.0.1   host"
)

# clear entire file
# cp /dev/null $hosts

# Gets the strings inside the array
for i in "${arr[@]}"
do
  if grep -q "$i" $hosts; then
    # Does nothing if DNS already exists
    :
  else
    # adds to host file
    echo "$i" >> $hosts
  fi
done

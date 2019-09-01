#!/bin/bash

function backup_file(){
  if [ -f $1 ]
  then
    local BACK="/Users/mac/Downloads/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${BACK}"
    # The exit status of the function will be the exit status of the cp command.
    cp $1 $BACK
  else 
    # the file does not exist.
    return 1 
  fi 
}

backup_file /Users/mac/Downloads/tmp/list.txt
if [ $? -eq 0 ]
then 
  echo "Backup Suceeded!"
fi

#!/bin/bash

function backup_file() {
  if [ -f $1 ]
  then
    local BACK="/Users/mac/Downloads/tmp/$(basename ${1}).$(date +%F).$$"
    echo "Backing up $1 to ${BACK}"
    cp $1 $BACK 
  else 
    return 1 
  fi
}

backup_file /Users/mac/Downloads/tmp/list.txt

if [ $? -eq 0 ]
then 
  echo "Backup Succeeded!"
else 
  echo "Backup failed"
  exit 1 
fi

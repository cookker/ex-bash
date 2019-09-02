#!/bin/bash

if [ -d /Users/mac/Downloads/tmp/copied ]
then
  echo "d"
else
  mkdir -p /Users/mac/Downloads/tmp/copied
  echo "no"
fi

cd /Users/mac/Downloads/tmp
for FILE in  *.html
do
	echo "Copying $FILE"
	cp $FILE /Users/mac/Downloads/tmp/copied
done

#!/bin/bash

while ping -c 1 www.example.com >/dev/null
do 
  echo "www.example.com still up..."
  sleep 5
done

echo "appliction down, continuting."

#!/bin/bash
function hello() {
  echo "Hello!"
  now
}

function now() {
  echo "Its $(date +%r)"
}

hello
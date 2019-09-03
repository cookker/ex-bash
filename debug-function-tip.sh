#!/bin/bash 

debug() {
 echo "Executing: $@"
 $@
}

debug ls
debug echo hello

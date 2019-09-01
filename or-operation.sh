#!/bin/bash
HOST="google.com.test"
ping -c 1 $HOST || echo "$HOST unreachable."

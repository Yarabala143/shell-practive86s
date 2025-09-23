#!/bin/bash
echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "script name: $0"
echo "Current directory:$PWD"
echo "Who is running this: $USER"
echo "Home directory of user: $HOME"
sleep 50 &
echo "PID of the last command in background is: $!"
echo "Last command exit status: $?"
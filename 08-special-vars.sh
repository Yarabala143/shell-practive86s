#!/bin/bash
echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "script name: $0"
echo "Current directory:$PWD"
echo "Who is running this: $USER"
echo "Process ID of the current script: $$"
echo "Last command exit status: $?"
echo "Home directory of user: $HOME"
#!/bin/bash

echo "currenct directory is : $PWD"
echo "who is running the script : $USER"
echo "Home directory of user is : $HOME"
echo "PID of user is : $$"
Sleep 50 &
echo "PID of last background process is : $!"
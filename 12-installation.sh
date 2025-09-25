#!/bin/sbin

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root or using sudo"
    #exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]; then
    echo "MySQL installation failed"
    #exit 1
else
    echo "MySQL installed successfully"
fi
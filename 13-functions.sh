#!/bin/sbin

USER_ID=$(id -u)
if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root or using sudo"
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "Error: $2 installation failed"
        exit 1
    else
        echo "$2 installed successfully"
    fi
}

dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"


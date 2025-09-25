#!/bin/sbin

USER_ID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USER_ID -ne 0 ]; then
    echo "Please run this script as root or using sudo"
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 .... $R installation failed $N"
        exit 1
    else
        echo -e "installed $2 .... $G successfully $N"
    fi
}

dnf list installed mysql
if [ $? ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else 
    echo -e "MySQL is already installed .... $Y skipping installation $N"
fi

dnf list installed nginx
if [ $? ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else 
    echo -e "Nginx is already installed .... $Y skipping installation $N"
fi

dnf list installed nginx
if [ $? ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else 
    echo -e "Python3 is already installed .... $Y skipping installation $N"
fi




#! /bin/bash

#checking if the user already exists in the system via /etc/passwd

echo "Please put the username you want to use & we will check if the username is already exists: "
read name

if grep $name /etc/passwd
then
  echo "Sorry, this username already exists in the system"
else
  echo "Great! You can use this username!"
fi

echo '------------------------------------------'
#checking does the home folder exists -d

homedir=/home/$name
if [ -d $homedir ]
then
  echo 'homefolder for this user already exists'
  cd $homedir
  ls -la

else
  echo "homefolder does not exist"
fi

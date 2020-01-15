#!/usr/bin/env bash
echo 'The current directory is:'
pwd
echo 'The user logger in is:'
whoami
echo "Home for the current user id: \$HOME -> $HOME"

echo; echo --- 'variable'; echo; #---

name='Alex'
surname='Popov'
echo $name $surname

echo; echo --- 'result command'; echo; #---

mydir=`pwd`
mydir_2=$(pwd)
echo $mydir ' or ' $mydir_2

echo; echo --- 'math operation'; echo; #---

var1=$(( 5 + 5 ))
echo $var1

echo; echo --- 'if'; echo; #---

if [ 1 -eq 1 ]; then
    echo true;
else
    echo false;
fi

user=alex
if [ $(grep $user user_list.txt) ]; then
    echo "$user is found of file user_list.txt";
else
    echo 'User is not found';
fi

ls

echo; echo --- 'sort'; echo; #---

sort user_list.txt

echo; echo --- ''; echo; #---

if [ -e user_list.txt ]; then
    echo 1;
else
    echo 2;
fi
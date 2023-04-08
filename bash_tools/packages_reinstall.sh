#!/bin/bash

if [ -z "$1" ]
then
    echo "No file name given"
    exit 1
fi

if [ ! -f "$1" ]
then
    echo "File not found"
    exit 1
fi

if [ ! -r "$1" ]
then
    echo "File not readable"
    exit 1
fi

filename=$1
echo $filename
read -r pkg < $filename
echo $pkg

if [ $pkg = pacman ]
then
    echo "Reinstalling"
    while read line; do
        echo $line
        sudo pacman -S $line --noconfirm
    done < $filename
elif [ $pkg = apt ]
then
    echo "Reinstalling"
    while read line; do
        echo $line
        sudo apt install $line -y
    done < $filename
elif [ $pkg = yum ]
then
    echo "Reinstalling"
    while read line; do
        echo $line
        sudo yum install $line -y
    done < $filename
elif [ $pkg = dnf ]
then
    echo "Reinstalling"
    while read line; do
        echo $line
        sudo dnf install $line -y
    done < $filename
else
    echo "No package manager found"
fi
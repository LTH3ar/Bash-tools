#!/bin/bash
# Opens a file in the default application base on file type of the input arguments
# use as: open.sh <file> <application> if application is not specified, file is opened in default application
# use for convenience in terminal environment (add to PATH variable)
IFS="."
read -a arr <<< "$1"
echo ${arr[1]}
#reset IFS
IFS=" "

# if second argument is empty, open file in default application 
# else open file in application specified by second argument 
# and move the process to background so that the terminal is not blocked

if [ -z "$1" ]
then
    echo "No file specified"
    exit 1
fi

# check if $2 exists as a command
if ! command -v $2 &> /dev/null
then
    echo "Command $2 does not exist"
    exit 1
fi

if [ -z "$2" ]
then
    echo $1
    xdg-open $1 2> /dev/null

elif [ "$2" == "nvim" ] || [ "$2" == "vim" ]
then
    echo $2
    echo $1
    $2 $1
else
    echo $2
    echo $1
    $2 $1 2> /dev/null & 
fi
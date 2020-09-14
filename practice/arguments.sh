#!/bin/bash

#Filename with absolute path
echo $0

#Use curly braces for arguments more than 9
echo "$2 $1 $3 $4 $5 $6 $7 $8 $9 ${10} ${11} ${12} ${13}"

#Number of arguments
echo $#

#Print all arguments
echo "$*"
echo "$@"

#Exit status of previous command
echo $?

#Print the process id
echo $$

#Process ID of last background command
#echo $!

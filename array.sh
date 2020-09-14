#!/bin/bash
os=('ubuntu' 'windows' 'kali')

#Add elements to array at index
os[3]='mac'

#Print all elements
echo "${os[@]}"

#Print index 1
echo "${os[1]}"

#Print indices
echo "${!os[@]}"

#Print length of array
echo "${#os[@]}"

#Update 0th index
os[0]='updated'
echo "${os[@]}"

#Remove the index element
unset os[2]
echo "${os[@]}"

string=asdflsadfsdf
echo "${string[@]}"
echo "${string[0]}"
echo "${string[1]}"
echo "${#string[0]}"

#Array index is in named form
declare -A associativeArray

#Array index is in numeric form
declare -a numericArray

associativeArray[0]=asdf
associativeArray[3]=qwerty
numericArray=55

echo "${associativeArray[@]}"
echo "${numericArray[@]}"

function Foo(){
 local -a localArray
 
 localArray[0]="Hi"
 localArray[1]="There"
 localArray[9]=55

 echo "${localArray[@]}"
}

Foo

echo "${localArray[@]}"

associativeArray[var1]="value1"
associativeArray[var2]="value2"

if [ "${associativeArray[var1]}" ]; then
 echo "var1 exists"
else
 echo "var1 doesn't exist"
fi


if [ "${associativeArray[var5]}" ]; then
 echo "var5 exists"
else
 echo "var5 doesn't exist"
fi

Test=var1
if [ "$associativeArray[$Test]" ]; then
 echo "var1 exists"
else
 echo "var1 doesn't exist"
fi

#Append to a string
numericArray+=("All work")
numericArray+=("and no play")
numericArray+=("makes jack a dull boy")

echo ${numericArray[@]}
echo ${numericArray[1]}
echo ${numericArray[2]}
echo ${numericArray[3]}



#For ksh shell
#set -A array_name value1 value2 value3 value4 value5

array_name=(value1 value2 value3 value4)
echo ${array_name[@]}
echo ${array_name[2]}

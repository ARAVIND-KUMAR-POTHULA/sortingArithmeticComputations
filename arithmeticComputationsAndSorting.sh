#! /bin/bash -x
read -p "enter a value in a " a
read -p "enter a value in b " b
read -p "enter a value in c " c
declare -A arithmeticOperation
arithmeticOperation[ "a+b*c" ]=$(( a+b*c ))
arithmeticOperation[ "a*b+c" ]=$(( a*b+c ))
arithmeticOperation[ "c+a/b" ]=$(( c+a/b ))
arithmeticOperation[ "a%b+c" ]=$(( a%b+c ))
array[0]=$(( arithmeticOperation[ "a+b*c" ] ))
array[1]=$(( arithmeticOperation[ "a*b+c" ] ))
array[2]=$(( arithmeticOperation[ "c+a/b" ] ))
array[3]=$(( arithmeticOperation[ "a%b+c" ] ))
echo ${!arithmeticOperation[@]}
echo ${arithmeticOperation[@]}
echo ${array[@]}

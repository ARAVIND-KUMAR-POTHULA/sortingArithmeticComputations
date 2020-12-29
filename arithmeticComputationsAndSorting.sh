#! /bin/bash -x
read -p "enter a value in a " a
read -p "enter a value in b " b
read -p "enter a value in c " c
declare -A arithmeticOperation
arithmeticOperation[ "a+b*c" ]=$(( a+b*c ))
arithmeticOperation[ "a*b+c" ]=$(( a*b+c ))
arithmeticOperation[ "c+a/b" ]=$(( c+a/b ))
arithmeticOperation[ "a%b+c" ]=$(( a%b+c ))
echo ${!arithmeticOperation[@]}
echo ${arithmeticOperation[@]}

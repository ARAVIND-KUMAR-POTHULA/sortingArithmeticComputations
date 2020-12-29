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
	for ((count=0;count<3;count++ ))
	do
		for (( check=$count+1;check<4;check++ ))
		do
			if (( $((array[$count])) > $((array[$check])) ))
			then
				temp=$((array[$count]))
				array[$count]=$(( array[$check] ))
				array[$check]=$temp
			fi
		done
	done
echo ${array[@]}

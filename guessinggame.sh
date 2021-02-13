#! /usr/bin/bash
################################################################################
# Created By	: MEGANAD MERALA
# Created Date  : FEB 02, 2020
# 	   	: Unix 201 project
###############################################################################

guessing() 
{	
	filecount=`ls -la | grep ^- | wc -l` 
	echo "Start guessing the file count in this directory:"
	read response
	num_test='^[+-]?[0-9]+$' 
	
	#Checking whether the entered number is natural number or not
	if [[ $response =~ $num_test ]];then # if - 1
		while [[ $response -ne $filecount ]]
		do
			if [[ $response -gt $filecount ]]
			then
				echo "Please enter some less value: \c "
			else 
				echo "Please enter some greater value: \c "
			fi 	
			read response
		done	
		echo "Congratulations you have entered correct Number!!"
	else
		echo "You have entered an invalid number(other than natural number). Exiting from the program"
		exit 1
	fi # if - 1
}

# calling function
guessing





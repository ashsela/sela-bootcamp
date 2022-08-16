#! /bin/bash

## DESCRIPTION: Password validator script.

#Variables
password_length=10
Red='\033[0;31m'       
Green='\033[0;32m'  


validate (){ 
# exit the program if no argument is supplied 
if [ ${#1} -lt $password_length ] 
then
	printf "${Red}Password must contain at least $password_length character\n"
		exit 1;
	elif ! [[ $1 =~ [[:digit:]] ]] 
	then
		    printf "${Red}Password must contain at least one number\n"
		        exit 1;
		elif ! [[ $1 =~ [A-Z]  ]] 
		then
			    printf "${Red}Password must contain at least one capital letter\n"
			        exit 1;
			elif ! [[ $1 =~ [a-z]  ]] 
			then
				    printf "${Red}Password must contain at least one small letter\n"
				        exit 1;
	fi
}    

validate $1

printf "${Green}success password is secure\n"
exit 0

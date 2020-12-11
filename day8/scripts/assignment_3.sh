#!/bin/sh

echo -n "Password: "
read pass
LEN=$(echo ${#pass})

if [ $LEN -lt 8 ]; then                                         #checking if it is 8 characters long

 echo "FAIL! Need at least 8 characters!"
 exit

 else

 echo "PASS! I could find at least 8 characters."

fi

count=$(echo $pass | sed 's/[^0-9]//g')
echo $count | grep -o '[0-9]' >/dev/null

if [ $? != 0 ]; then                                            #checking if it contains digits
 echo "FAIL! Password do not contains digits!"
 exit
 else
	echo "PASS! I could find digits in password."
	
fi

upper=`echo $pass | grep [A-Z]`
if [ "$?" != "0" ]; then                                        #checking if it contains UPPERCASE
 echo "FAIL! Password do not contains UPPERCASE Letters"
 exit
 else
	echo "PASS! Password contains UPPERCASE letters."
	
fi

lower=`echo $pass | grep [a-z]`
if [ "$?" != "0" ]; then                                        #checking if it contains LOWERCASE
 echo "FAIL! Password do not contains LOWERCASE Letters"
 exit
 else
	echo "PASS! Password contains LOWERCASE letters."
	echo "Congratulations! you have a strong password."
	exit
fi
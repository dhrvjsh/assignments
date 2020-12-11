#!/bin/bash

echo  -n "Enter a number to reverse it: "   #Entering number to reverse
read file                                   #reading the number from command line
echo $file > file                           #storing that number in a file
echo -n "Reverse of the numeber is: "       
echo `rev file`                             #reversing the number
echo -n `rm file`                           #removing the file
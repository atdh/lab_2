#!/bin/bash
# Authors : Atul Dhungel, Tyler
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#echo "Enter a file name: "
#read fileName
#echo "Give a regular expression: "
#read regex
fileName="regex_practice.txt"
regex='cat'
echo "File name: $fileName"
grep -E $regex $fileName >newFile.txt
echo "Displaying phone numbers from regex text file: "
grep -Ec '[0-9]{3}-[0-9]{3}-[0-9]{4}' $1
grep -Ec '\b\w+@\w+\W\w+\b' $1
grep -Ec '[0-9]{3}-[0-9]{3}-[0-9]{4}' $1 >phone_results.txt
grep -E '\b\w+@geocities.com\b' $1 >email_results.txt
grep $2 $1 >command_results.txt


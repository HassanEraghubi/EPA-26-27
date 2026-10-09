#!/bin/bash

# this is a comment


# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0"
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"

if [  $1 -gt  $ct ]; then
	echo "Maximum number of processes exceeded"
else
	echo "The maximum number of processes NOT exceeded."
fi

#!/bin/bash

# this is a comment



#if [  $1 -gt  $ct ]; then
#	echo "$(date '+%Y-%m-%d %H:%M:%S')- Maximum number of processes exceeded" >> lab03_exercise2output
#else
#	echo "$(date '+%Y-%m-%d %H:%M:%S')- The maximum number of processes NOT exceeded." >> lab03_exercise2output
#fi
#
#if [ $2 -eq "terminal" ]; then
#	if [  $1 -gt  $ct ]; then
#		echo "$(date '+%Y-%m-%d %H:%M:%S')- Maximum number of processes exceeded" >> lab03_exercise2output
#	else
#		echo "$(date '+%Y-%m-%d %H:%M:%S')- The maximum number of processes NOT exceeded." >> lab03_exercise2output 
#	fi
#elif [ $2 -eq "file" ]; then
#	if [  $1 -gt  $ct ]; then 
#		echo "$(date '+%Y-%m-%d %H:%M:%S')- Maximum number of processes exceeded" >> lab03_exercise2output 
#	else
#		echo "$(date '+%Y-%m-%d %H:%M:%S')- The maximum number of processes NOT exceeded." >> lab03_exercise2output 
#	fi
#fi

# just realised a better way to do this while editing the above script


if [ $2 = "terminal" ]; then
	bash ./lab_03exercise1.sh $1
elif [ $2 = "file" ]; then
	bash ./lab_03exercise2.sh $1
fi

#run script 1 or 2, instead of multiple if and else statements

#!/bin/bash

# this is a comment

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)
echo "There are $ct processes running on this machine"

if [  $1 -gt  $ct ]; then
	echo "$(date '+%Y-%m-%d %H:%M:%S')- Maximum number of processes exceeded" >> lab03_exercise2output
else
	echo "$(date '+%Y-%m-%d %H:%M:%S')- The maximum number of processes NOT exceeded." >> lab03_exercise2output
fi

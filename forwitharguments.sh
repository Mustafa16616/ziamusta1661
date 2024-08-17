#!/bin/bash

#this script is to create folders by taking arguments
<< comment
This script create multiple folders by passing argument
run this script via
# ./forwitharguments.sh test 1 5
dollar1 is making folder argument
dollar2 is for starting range for folder
dollar3 is for ending range of folder
comment

for (( num=$2; num<=$3; num++ )) 
do
	mkdir "$1$num"
done

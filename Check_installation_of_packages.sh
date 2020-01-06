#!/bin/bash
#Author: Siddharth Lakhani
#Description: This script used to check the desired packages are installed or not. If it is installed then it only print the package is installed else it will exit from script.

declare -a myarray

readarray -t myarray < generaltools.txt  #In generaltools.txt files declare name of packages which will store in variable as array and process in loop simultaneously.
    for a in "${myarray[@]}"
        do 
            if [ "$(dpkg -s $a | grep -c "ok installed")" == "1" ]
                then
                echo "Package is installed"
            fi
        done
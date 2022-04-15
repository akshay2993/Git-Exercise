#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

isPresent=$((RANDOM%2));

if [ $isPresent -eq 0 ]
then
        echo "Employee is absent";
elif [ $isPresent -eq 1 ]
then
        echo "Employee is present";
fi

#!/bin/bash

echo "Welcome to the Employee Wage Computation Program!"

## Use Case-1 #### (check employee present or absent)

isPresent=$((RANDOM%2));

case $isPresent in
        0)
        	echo "Employee is absent";
                ;;

        1)
                echo "Employee is present";
             	;;
esac

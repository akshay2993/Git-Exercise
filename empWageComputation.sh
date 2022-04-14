#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

## Use Case-2 #### (calculate daily employee wage)
wagePerHour=20
workingHours=0
isPresent=$((RANDOM%2));

case $isPresent in
        0)
		dailyWage=$(( $wagePerHour*$workingHours ))
        	echo "Employee is absent. So today's wage : $dailyWage";
                ;;

        1)
		workingHours=8
                dailyWage=$(( $wagePerHour*$workingHours ))
                echo "Employee is present. So today's wage : $dailyWage";

             	;;
esac

#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

wagePerHour=20
workingHours=0
isPresent=$((RANDOM%2));

if [ $isPresent -eq 0 ]
then
        echo "Employee is absent";
elif [ $isPresent -eq 1 ]
then
        echo "Employee is present";
	workingHours=8
fi

dailyWage=$(( $wagePerHour*$workingHours ))
echo "Employee's today's wage : $dailyWage $";

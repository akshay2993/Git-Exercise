#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

wagePerHour=20
workingHours=0
isPresent=$((RANDOM%3));
totalSalary=0

for ((day=1; day<=20; day++))
do
	case $isPresent in
        	0)
        	echo "Employee is absent";
        	;;

        	1)
        	echo "Employee is present";
        	workingHours=8;
        	;;

        	2)
        	echo "Employee is working Part-time";
        	workingHours=4;
        	;;
	esac

	dailyWage=$(( $wagePerHour*$workingHours ))
	totalSalary=$(( $dailyWage+$totalSalary ))
done

echo "Employee has earned $totalSalary $ this month.";

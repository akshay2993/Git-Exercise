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
        	workingHours=0;
        	;;

        	1)
        	workingHours=8;
        	;;

        	2)
               	workingHours=4;
        	;;
	esac

	dailyWage=$(( $wagePerHour*$workingHours ))
	totalSalary=$(( $dailyWage+$totalSalary ))
done

echo "Employee has earned $totalSalary $ this month.";

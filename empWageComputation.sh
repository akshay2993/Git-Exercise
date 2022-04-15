#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

wagePerHour=20
workingHours=0
isPresent=$((RANDOM%3));

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
echo "Employee's today's wage : $dailyWage $";

#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

wagePerHour=20
workingHours=0
isPresent=$((RANDOM%3));

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
echo "Employee's today's wage : $dailyWage $";

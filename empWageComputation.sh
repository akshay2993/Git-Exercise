#!/bin/bash -x

echo "Welcome to the Employee Wage Computation Program!"

wagePerHour=20
workingHours=0
totalSalary=0
totalWorkingHours=0
salary=0
day=1

while [[ $day -le 20 && $totalWorkingHours -lt 100 ]]
do
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

        totalWorkingHours=$(($totalWorkingHours + $workingHours));
	if [ $totalWorkingHours -gt 100 ]
	then
		totalWorkingHour=$(($totalWorkingHours - $workingHours));
		break;
	fi
        salary=$(($wagePerHour*$workingHours));
        totalSalary=$(($totalSalary + $salary));
        ((day++));
done

echo "Employee has earned $totalSalary $ this month.";

#!/bin/bash -x


echo "Welcome to the Employee Wage Computation Program!"

function calculateWorkingHours() {
	case $1 in
		0)
			workingHours=0;
			;;

		1)
			workingHours=8;
			;;
		2)
			workingHours=4;
			;;
	esac;
	echo $workingHours;
}

wagePerHour=20;
totalSalary=0;
totalWorkingHours=0;
day=1;

while [[ $day -le 20 && $totalWorkingHours -lt 100 ]]
do
	workingHours=$(calculateWorkingHours $((RANDOM%3)));
	totalWorkingHours=$(($totalWorkingHours + $workingHours));
	if [ $totalWorkingHours -gt 100 ]
	then
		totalWorkingHours=$(($totalWorkingHours - $workingHours));
		break;
	fi
	salary=$(($wagePerHour * $workingHours));
	totalSalary=$(($totalSalary + $salary));
	((day++));
done

echo "Employee earned $totalSalary $ this month (Total working Hour : $totalWorkingHours)";


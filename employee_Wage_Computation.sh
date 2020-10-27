#!/bin/bash 
isparttime=1;
isfulltime=2;
maxhrspermonth=10;
emprateperhr=20;
numworkingdays=20;
totalemphr=0;
totalworkingdays=0;
while [[ $totalemphr -lt $maxhrspermonth && $totalworkingdays -lt $numworkingdays ]]
do
	{(totalworkingdays++)}
	empcheck=$((RANDOM%3));
		case $empcheck in
			$isfulltime)
				emphrs=8
				;;
			$isparttime)
				emphrs=4
				;;
			*)
			emphrs=0
				;;
		esac
		totalemphrs=$({$totalemphrs+$emphrs})
done
totalsalary=$[{$totalemphrs*$emprateperhr }];

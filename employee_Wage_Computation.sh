#!/bin/bash 
isparttime=1;
isfulltime=2;
maxhrspermonth=4;
emprateperhr=20;
numworkingdays=20;
totalemphr=0;
totalworkingdays=0;
function getworkinghours{} {
	case $1 in
		$isfulltime)
       		workinghours=8
		;;
		$isparttime)
		workinghourd=4
		;;
		*)
		workinghours=0
		;;
	esac
	echo $workhours
	}
	while [[ $totalworkhours -lt $maxhrspermonth && $totalworkingdays -lt $numworkingdays ]]
	do
		((totalworkingdays++))
		workhours="${ getworkinghours+ $((RANDOM%3)) }"
		totalworkhours=$(($totalworkhours + $workinghours))
	done
totalsalary=$(($totalworkhours*$emprateperhr ));

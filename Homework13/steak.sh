#!/bin/bash

read -p "Please input meat temperature" temp

if [ $temp -ge 120 ] && [ $temp -le 130 ]
then
	echo "rare - for 120-130"
elif [ $temp -ge 131 ] && [ $temp -le 140 ]
then 
	echo "medium rare - for 131-140"
elif [ $temp -ge 141 ] && [ $temp -le 150 ]
then
        echo "medium - for 141-150"
elif [ $temp -ge 151 ] && [ $temp -le 160 ]
then
        echo "medium well - for 151-160"
elif [ $temp -ge 161 ] && [ $temp -le 170 ]
then
        echo "medium rare - for 161-170"
fi


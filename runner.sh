#!/bin/bash
clear

read -p "Enter Sequence =  " seq
echo "--------------------------------"
echo "--------------------------------"
echo 
echo 

for i in $(seq 1 $seq)
do
	echo "Sequence No. =  $i"
	#/usr/bin/python3 screen-check.py pic1.png
	/usr/bin/python3 SBM-VFS-smallbrowser.py
	sleep 15
	/usr/bin/python3 screen-check.py pic2.png
	sleep 2
	diff=$(/usr/bin/python3 compare.py pic1.png pic2.png)
	
	if [ "$diff" == "0" ];then
		echo "	There is No Change."
	else
		echo "	New Calendar has been detected."
		
		for i in {1..1}
		do
			spd-say 'Come here it is opened'
			sleep 2
		done
		
		exit
	fi

	echo "============================================="
done

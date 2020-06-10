#! /bin/bash 
echo "flipping a coin to display head or tail "
head=0
tail=1
((diff=tail-head+1))
i=o;
c_head=0
c_tail=0
while (( i<10 ))
do
	result=$(( head+$((RANDOM%diff)) ))
	echo "result : " $result
	if [ $result -eq 0 ]
	then
		((c_head++))
	else
		((c_tail++))
	fi
((i++))
done
echo "number of times head won : " $c_head
echo "number of times tail wom : " $c_tail


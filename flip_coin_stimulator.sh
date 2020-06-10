#! /bin/bash 
echo "flipping a coin to display head or tail "
head=0
tail=1
((diff=tail-head+1))
count=1;
c_head=0
c_tail=0
while [ $count -gt 0 ]
do
	result=$(( head+$((RANDOM%diff)) ))
	#echo "result : " $result
	if [ $result -eq 0 ]
	then
		((c_head++))
	else
		((c_tail++))
	fi
	if [ $c_head -eq $c_tail ]
	then
		break
	fi
((count++))
done
echo "number of times head won : " $c_head
echo "number of times tail wom : " $c_tail
echo "game continues untill difference of minimum 2 points is achieved"
i=1
while [ $i -gt 0 ]
do
	result=$(( head+$((RANDOM%diff)) ))
        if [ $result -eq 0 ]
        then
                ((c_head++));
        else
                ((c_tail++));
        fi
	if [ $c_head -gt $c_tail ]
	then
		c1=$(($c_head-$c_tail));
		if [ $c1 -eq 2 ]
		then 
			echo "head count=$c_head   tail count=$c_tail";echo " diff=$c1";
		break
		fi
	elif [ $c_tail -gt $c_head ]
	then
		c2=$(($c_tail-$c_head));
		if [ $c2 -eq 2 ]
		then
			echo "head count=$c_head   tail count=$c_tail";echo " diff=$c1";
		break
		fi
	fi
((i++))
done


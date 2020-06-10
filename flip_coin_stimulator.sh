#! /bin/bash
echo "flipping a coin to display head or tail "
head=0
tail=1
((diff=tail-head+1))
first_flip=$(( head+$((RANDOM%diff)) ))
echo "first flip ( H=0 & T=1 ) : " $first_flip


#!/bin/sh
echo -n "Enter n : " 
read n
index=0 
tong=0 
while [ $index -lt $n ] 
do 
index=$(($index + 1)) 
tong=$(($tong + $index)) 
done 
echo "Result 1 + 2 + ... + $n = $tong" 
exit 0



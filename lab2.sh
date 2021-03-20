echo -n "What is your age ? "
read age 

while [ "$age" -lt 1 ]
do
echo "Invalid data, age must be greater than 0"
echo -n "What is your age ? "
read age
done 

while [ "$age" -gt 200 ]
do
echo "Invalid data, age must be less than 200"
echo -n "What is your age ? "
read age
done

while [ "$age" -le 200 ]
do
echo "Correct, your age is $age"
break
done

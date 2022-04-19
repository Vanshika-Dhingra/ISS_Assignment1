IFS=', ' read -r -a a 
n=${#a[*]}
for (( i = 0; i < $n-1 ; i++ ))
do
for (( j = $i+1; j < $n; j++ ))
do
if [ ${a[$i]} -gt ${a[$j]}  ]
then
t=${a[$i]}
a[$i]=${a[$j]}
a[$j]=$t
fi
done
done
for (( i=0; i < $n; i++ ))
do
echo -n "${a[$i]} "
done
echo
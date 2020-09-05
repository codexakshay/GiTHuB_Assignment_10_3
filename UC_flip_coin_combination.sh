declare -A dict
h_c=0
l_c=0
h=1
for ((i=1;i<=20;i++))
do
flip=`shuf -i 0-1 -n 1`
if [ $flip -eq $h ]; then
        h_c=$(($h_c+1))
        dict[H]=$h_c
else
        l_c=$(($l_c+1))
        dict[T]=$l_c
fi
done
echo
echo "H : "${dict[H]}
echo "T : "${dict[T]}


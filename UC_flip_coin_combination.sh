declare -A dict

h=0
h_c=0

t=1
t_c=0

hh=00
hh_c=0

tt=11
tt_c=0

ht=01
ht_c=0

th=10
th_c=0

for ((i=1;i<=10;i++))
do

flip1=`shuf -i 0-1 -n 1`
flip2=`shuf -i 0-1 -n 1`

flipa="$flip1"
flipb="$flip1$flip2"

#H
if [[ $flipa == *"$h"* ]]; then
        h_c=$(($h_c+1))
        dict[H]=$h_c
fi

#T
if [[ $flipa == *"$t"* ]]; then
        t_c=$(($t_c+1))
        dict[T]=$t_c
fi

#HH
if [[ $flipb == *"$hh"* ]]; then
        hh_c=$(($hh_c+1))
        dict[HH]=$hh_c
fi
#TT
if [[ $flipb == *"$tt"* ]]
then
        tt_c=$(($tt_c+1))
        dict[TT]=$tt_c
fi
#ht
if [[ $flipb == *"$ht"* ]]
then
        ht_c=$(($ht_c+1))
        dict[HT]=$ht_c
fi
#TT
if [[ $flipb == *"$th"* ]]
then
        th_c=$(($th_c+1))
        dict[TH]=$th_c
fi
done
echo

echo "H : "${dict[H]}
echo "T : "${dict[T]}

echo

echo "HH : "${dict[HH]}
echo "TT : "${dict[TT]}
echo "HT : "${dict[HT]}
echo "TH : "${dict[TH]}

echo


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


hhh=000
ttt=111

hht=001
htt=011

tth=110
thh=100

tht=101
hth=010



for ((i=1;i<=80;i++))
do

flip1=`shuf -i 0-1 -n 1`
flip2=`shuf -i 0-1 -n 1`
flip3=`shuf -i 0-1 -n 1`

flipc="$flip1$flip2$flip3"
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

#HHH
if [[ $flipc == *"$hhh"* ]]; then
        hhh_c=$(($hhh_c+1))
        dict[HHH]=$hhh_c
fi

#TTT
if [[ $flipc == *"$ttt"* ]]
then
        ttt_c=$(($ttt_c+1))
        dict[TTT]=$ttt_c
fi



#HHT
if [[ $flipc == *"$hht"* ]]
then
        hht_c=$(($hht_c+1))
        dict[HHT]=$hht_c
fi


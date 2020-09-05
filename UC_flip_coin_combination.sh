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

#HTT
if [[ $flipc == *"$htt"* ]]
then
        htt_c=$(($htt_c+1))
        dict[HTT]=$htt_c
fi

#TTH
if [[ $flipc == *"$tth"* ]]
then
        tth_c=$(($tth_c+1))
        dict[TTH]=$tth_c
fi

#THH
if [[ $flipc == *"$thh"* ]]
then
        thh_c=$(($thh_c+1))
        dict[THH]=$thh_c
fi

#THT
if [[ $flipc == *"$tht"* ]]
then
        tht_c=$(($tht_c+1))
        dict[THT]=$tht_c
fi

#HTH
if [[ $flipc == *"$hth"* ]]
then
        hth_c=$(($hth_c+1))
        dict[HTH]=$hth_c
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

echo -e "\n\nHHH : "${dict[HHH]}
echo -e "TTT : "${dict[TTT]}

echo -e "\n\nHHT : "${dict[HHT]}
echo -e "HTT : "${dict[HTT]}

echo -e "\n\nTTH : "${dict[TTH]}
echo -e "THH : "${dict[THH]}

echo -e "\n\nTHT : "${dict[THT]}
echo -e "HTH : "${dict[HTH]}




max=9
if [ $h_c -gt $max ]
then
 max_p="H"
 max=$h_c

elif [ $t_c -gt $max ]
then
 max_p="T"
 max=$t_c





elif [ $hh_c -gt $max ]
then
 max_p="HH"
 max=$hh_c

elif [ $tt_c -gt $max ]
then
 max_p="TT"
 max=$tt_c

elif [ $ht_c -gt $max ]
then
 max_p="HT"
 max=$ht_c

elif [ $th_c -gt $max ]
then
 max_p="TH"
 max=$th_c





elif [ $hhh_c -gt $max ]
then
 max_p="HHH"
 max=$hhh_c

elif [ $ttt_c -gt $max ]
then
 max_p="TTT"
 max=$ttt_c




elif [ $hht_c -gt $max ]
then
 max_p="HHT"
 max=$hht_c

elif [ $htt_c -gt $max ]
then
 max_p="HTT"
 max=$htt_c




elif [ $tth_c -gt $max ]
then
 max_p="TTH"
 max=$tth_c

elif [ $thh_c -gt $max ]
then
 max_p="THH"
 max=$thh_c




elif [ $tht_c -gt $max ]
then
 max_p="THT"
 max=$tht_c

elif [ $hth_count -gt $max ]
then
 max_p="HTH"
 max=$hth_c



fi
echo -e "\nMAX IS $max_p : $max TIMES "

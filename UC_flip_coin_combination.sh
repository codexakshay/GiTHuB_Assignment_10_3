flip=$(($(($RANDOM%10))%2))
if [ $flip -eq 1 ]; then
    echo "HEADS"
else
    echo "TAILS"
fi

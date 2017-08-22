echo '#time,delay,buffer,throughput'
for line in $(cat "$@" | grep 'timeupdate'); do
    echo "$line" | cut -d',' -f2,3,4,5 -;
done
    

echo '#time,download,throughput'
for line in $(cat "$@" | grep 'chunk'); do
    echo "$line" | cut -d',' -f2,3,4 -;
done

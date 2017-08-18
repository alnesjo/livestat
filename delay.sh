for file in "$@"; do
    tail -1 "$file" | cut -d',' -f3 -;
done

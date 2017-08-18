for file in "$@"; do
    sed -n -e '/^startup/,$p' "$file" | head -1 - | cut -d',' -f3 -;
done

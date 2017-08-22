echo '#delay,startup'
for file in "$@"; do
    first=$(sed -n -e '/^first/,$p' "$file" | head -1 -);
    startup=$(echo "$first" | cut -d',' -f3 -);
    last=$(tail -1 "$file");
    delay=$(echo "$last" | cut -d',' -f3 -);
    echo "$delay,$startup";
done

[ -z "$1" ] && exit
[ ! -d "$1" ] && exit

for file in "$1/"*
do
    echo -n "要把 $file 重新命名成？"
    read name
    mv "$file" "$1/$name"
done

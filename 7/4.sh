echo -n "產生或移除 ~/testfile (add/del) "
read answer

if [ "$answer" = 'add' ]; then
    echo 'touch ~/testfile'
    touch ~/testfile
elif [ "$answer" = 'del' ]; then
    echo 'rm ~/testfile'
    rm ~/testfile
else
    echo '無效的指令'
fi

echo -n "產生或移除 ~/tesfile (add/del) "
read answer

if [ "$answer" = 'add' ]; then
    echo 'touch ~/tesfile'
    touch ~/tesfile
elif [ "$answer" = 'del' ]; then
    echo 'rm ~/tesfile'
    rm ~/tesfile
else
    echo '無效的指令'
fi

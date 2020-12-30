file=run_today

if [ ! -e "$file" ] ; then
    random=$(awk 'BEGIN { srand(); print rand() * 100 }')
    if [[ $random -gt 90 ]] ; then
        echo run
        touch "$file"
    fi
else
    echo already run today
    exit
fi

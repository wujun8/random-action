today=$(date +"%F")

if [[ "$today" != $(< run_today) ]] ; then
    random=$(awk 'BEGIN { srand(); print rand() * 100 }')
    random=${random%.*}
    if [ $random -gt 90 ] ; then
        echo run
        echo $today > run_today
    fi
else
    echo already run today
    exit
fi

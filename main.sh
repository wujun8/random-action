today=$(date +"%F")

if [[ "$today" != $(< run_today) ]] ; then
    random=$(awk 'BEGIN { srand(); print rand() * 100 }')
    random=${random%.*}
    if [ $random -gt 79 ] ; then
        echo run
        curl -X POST -H "Authorization: token $PAT" -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/wujun8/cccat/dispatches -d '{"event_type": "api"}'
        echo $today > run_today
    else
        echo random=$random
    fi
else
    echo already run today @$today
    exit
fi

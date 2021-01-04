today=$(date +"%F")

if [[ "$today" != $(< run_today) ]] ; then
    random=$(awk 'BEGIN { srand(); print rand() * 100 }')
    random=${random%.*}
    if [ $random -gt 90 ] ; then
        echo run
        curl -X POST -H "Authorization: $PAT" -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/wujun8/cccat/actions/workflows/main.yml/dispatches -d '{"ref":"main"}'
        echo $today > run_today
    else
        echo random=$random
    fi
else
    echo already run today
    exit
fi

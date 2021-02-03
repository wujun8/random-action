#curl -X POST -H "Authorization: token $PAT" -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/wujun8/cccat/actions/workflows/main.yml/dispatches -d '{"ref":"main"}'
curlr="TTT"
curl -sS "https://oapi.dingtalk.com/robot/send?access_token=$DDTOKEN" -X "POST" -H "Accept: application/json;charset=utf-8" -H "Content-Type: application/json;charset=utf-8" -d '{"msgtype": "text","text": {"content": "'"$curlr"'"}}' --compressed

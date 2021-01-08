curl -X POST -H "Authorization: token $PAT" -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/wujun8/cccat/actions/workflows/main.yml/dispatches -d '{"ref":"main"}'

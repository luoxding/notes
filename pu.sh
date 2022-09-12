#!/bin/bash
now=$(date -R)
# echo "Change Directory to Repository"
# cd ~/project/mkdocs/
#echo "Starting add-commit-pull-push..."
echo "开始git任务"
#git add -A && git commit -m "$now" && git pull && git push
git add -A
git commit -m "$now"
#git pull
git push
#echo "Finish!"
echo "推送到远程仓库完毕！"
#read

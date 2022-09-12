#!/bin/bash
echo "Enter your message"
read message
git add --all
git commit -m "${message}"
if [ -n "$(git status - porcelain)" ];
then
 echo "IT IS CLEAN"
else
 git status
 echo "Pushing data to remote server!!!"
 git push origin main
#git push -u origin main
fi

git branch
git checkout -b NEW_BRANCH
echo "new file" > newfile.txt
git add newfile.txt
git commit -a -m "newfile" newfile.txt
git push origin NEW_BRANCH

git branch
git checkout master
ls
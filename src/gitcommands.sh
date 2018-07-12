mkdir DIR
cd DIR
pwd

cd my_repo
mkdir documentation
pwd
ls

git status
git add documentation
git commit -a -m "documentation folder"
git push origin master

git branch
git checkout -b NEW_BRANCH
echo "new file" > newfile.txt
git add newfile.txt
git commit -a -m "newfile" newfile.txt
git push origin NEW_BRANCH

git branch
git checkout master
ls
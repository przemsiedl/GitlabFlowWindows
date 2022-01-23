branch=$(git branch --show-current)
git checkout master
git branch -d $branch
git remote update --prune
git pull
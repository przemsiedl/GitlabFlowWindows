branch=$(git branch --show-current)
if [ -z ${1} ]; then
	git checkout master
	git pull
	git checkout $branch
	git rebase -r master
else
	git checkout $1
	git pull
	git checkout $branch
	git rebase -r $1
fi
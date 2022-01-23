git checkout master
git pull
git checkout -b $1
git push origin -u $1 -o merge_request.create
shopt -s extglob

origin=$(git remote get-url --push origin)
origin="${origin#@(https://|git@)}"
origin="${origin//[\/]/:}"

IFS=':'
read -a split <<< "$origin"
unset IFS
website=${split[0]}
group=${split[1]}
projectName=$(echo ${split[2]} | awk '{ print substr($0,0,length($0)-4)}')
url="https://$website/$group/$projectName/-/merge_requests"
start $url
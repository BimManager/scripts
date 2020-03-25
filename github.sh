REPO_NAME=$2

if [[ '' == $GIT_TOKEN ]]; then
    echo 'GIT_TOKEN is not defined'
    exit 1
fi    

if [[ $# -ne 2 ]]; then
    echo "usage: sh github.sh init|rm repo_name"
    if [[ $1 == 'init' ]]; then
	echo 'init a repo'
    fi
    exit 1
fi

if [[ 'init' == $1 ]]; then
    curl -X POST -H "Authorization: token $GIT_TOKEN" \
	 -d "{ \
     	\"name\": \"$REPO_NAME\", \
	\"auto_init\": true, \
	\"private\": false, \
	\"license_template\": \"mit\" \
	}" \
	 https://api.github.com/user/repos
fi    

if [[ 'rm' == $1 ]]; then
    curl -X DELETE -i -H "Authorization: token $GIT_TOKEN" \
         https://api.github.com/repos/bimmanager/$REPO_NAME
fi

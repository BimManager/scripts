ifconfig | grep -i -E "([0-9a-z]:[0-9a-z]){3}" | awk -F" " '{print $2}'

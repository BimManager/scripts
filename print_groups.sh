groups $FT_USER | awk -F":" '{print $2}' | cut -c2- | tr " " "," | tr -d '\n'

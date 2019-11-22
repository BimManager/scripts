#!/bin/bash

declare -A MAP1
MAP1["'"]=0
MAP1['\\']=1
MAP1['"']=2
MAP1['?']=3
MAP1['!']=4

declare -A MAP2
MAP2['m']=0
MAP2['r']=1
MAP2['d']=2
MAP2['o']=3
MAP2['c']=4

declare -A MAP3
MAP3['g']=13
MAP3['t']=12
MAP3['a']=11
MAP3['i']=10
MAP3['o']=9
MAP3[' ']=8
MAP3['l']=7
MAP3['u']=6
MAP3['S']=5
MAP3['n']=4
MAP3['e']=3
MAP3['m']=2
MAP3['f']=1

ARR=('g' 't' 'a' 'i' 'o' ' ' 'l' 'u' \
	 'S' 'n' 'e' 'm' 'f')

echo ${FT_NBR1}
echo ${FT_NBR2}

radix_dec() {
    nbr=$1
    rad=$2
    map=$3
    i=${#nbr}
    res=0
    while [[ 0 -lt ${#nbr} ]]
    do
	i=$((i-1))
	d=${nbr::1}
	nbr=${nbr:1}
	k=$map['$d']
	res=$((res*$rad+$k))
	printf "d=%s; i=%s; res=%i\n" $d $i $res
    done
    echo $res
}


radix_dec ${FT_NBR1} 5 MAP1
res1=$res
radix_dec ${FT_NBR2} 5 MAP2
res2=$res

sum=$((res1+res2))

rad=13

digits_16=('0' '1' '2' '3' '4' '5' '6' '7' '8' \
	       '9' 'a' 'b' 'c' 'd' 'e' 'f')

dec_to_radix() {
    num=$1
    shift
    rad=$1
    shift
    digits=("$@")
    declare -a stack
    i=-1
    
while [[ 0 -lt $num ]]
do
    rem=$((num % rad))
    i=$((i + 1))
    printf "rem = %d; d = %c\n" $rem ${digits[rem]}
    stack[$i]=${digits[rem]}
    num=$((num / rad))
done

printf "\n"
while [[ 0 -le $i ]]
do
    printf "%c" ${stack[i]}
    i=$((i-1))
done
printf "\ndone\n"
}
    
printf "res1=%d; res2=%d; sum=%d\n" $res1 $res2 $sum

dec_to_radix 3333 16 "${digits_16[@]}"

dec_to_radix $sum 13 "${ARR[@]}"

    

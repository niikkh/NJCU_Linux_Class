
inputVal=$1
echo "myhash being run with $inputVal"
STRING_HASH_VAL=0
EVEN_HASH_VAL=1
ODD_HASH_VAL=2
NUMBER_RE='^[-]?[0-9]+$'
EVEN_RE=__TODO__REGEX_FOR_EVEN_NUMBER
if [[ $inputVal =~ $NUMBER_RE ]] 
then
        if [[ $((inputVal%2)) -eq 0   ]]
        then
                echo $EVEN_HASH_VAL
        else # must be odd
                echo $ODD_HASH_VAL 
        fi
else # must be a string
        echo $STRING_HASH_VAL;
fi
exit 0

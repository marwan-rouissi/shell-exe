#! /bin/sh
add=$(($1+$3))
minus=$(($1-$3))
multi=$(($1*$3))
div=$(($1/$3))

if [ "$2" = "+" ]
then
echo $add
elif [ "$2" = "-" ]
then
echo $minus
elif [ "$2" = "x" ]
then
echo $multi
elif [ "$2" = "/" ]
then 
echo $div
else
echo "Veuillez utiliser l'un des opérateurs suivants: [ +,-,x,/ ]"
fi

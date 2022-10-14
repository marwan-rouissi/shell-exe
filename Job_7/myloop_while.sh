#! /bin/sh
i=1
while [ $i -le 10 ]
do
	echo "Je suis un script qui fait une boucle $i"
	i=$(($i+1))
done

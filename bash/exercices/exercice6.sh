#!/bin/bash
clear

echo "entrez le nombre dont vous souhaitez la table"
read number

for i in $number; do
    echo "$number * 1 est egal a : $(( $i*1 ))"
    echo "$number * 2 est egal a : $(( $i*2 ))"
    echo "$number * 3 est egal a : $(( $i*3 ))"
    echo "$number * 4 est egal a : $(( $i*4 ))"
    echo "$number * 5 est egal a : $(( $i*5 ))"
    echo "$number * 6 est egal a : $(( $i*6 ))"
    echo "$number * 7 est egal a : $(( $i*7 ))"
    echo "$number * 8 est egal a : $(( $i*8 ))"
    echo "$number * 9 est egal a : $(( $i*9 ))"
    echo "$number * 10 est egal a : $(( $i*10 ))"
done
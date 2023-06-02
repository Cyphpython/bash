#!/bin/bash
clear
annee=1960
echo
echo "Guess My date "
read rechan
while true; do
    if (( $rechan > $annee)); then
        echo "Vous etes trop haut"
        break
    elif (( $rechan < $annee)); then
        echo "vous etes trop bas"
        break
    elif (( $rechan == $annee )); then
        echo "Vous avez vu juste"
        break
    fi
done

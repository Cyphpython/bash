#!/bin/bash
clear
echo "Entrez un nombre"
read number
echo "A quelle puissance voulez vous calculez (carre ou cube)"
read power
if [[ $power = "carre" ]]; then
    echo "Le resultat est $(( $number *  $number))"
elif [[ $power = "cube" ]]; then
    echo "Le resultat est $(( $number *  $number * $number))"
else
    echo "La puissance n'est pas valide"
fi
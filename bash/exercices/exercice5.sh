#!/bin/bash
clear

echo "entrez votre total"
read total
echo "Choississez entre formative ou certificative(SA/SI)"
read format
echo "entrez les points"
read points

if (( $format == "SA" && $points > $total / 2 )); then
    echo "Vous avez passé la certificative"
elif (( $format == "SI" && $points > $total / 2 )); then
    echo "Vous avez passé le formative"
elif (( $format == "SI" && $points == $total / 2 )); then
    echo "Vous etes en EVA"
elif (( $format == "SA" && $points == $total / 2 )); then
    echo "Vous etes en EVA"
elif (( $format == "SI" && $points < $total / 2 )); then
    echo "Vous avez raté la formative"
elif (( $format == "SA" && $points < $total / 2 )); then
    echo "Vous avez raté la certificative"
fi
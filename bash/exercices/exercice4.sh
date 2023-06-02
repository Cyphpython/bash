#!/bin/bash
clear

echo "choississez votre sexe(H/F)"
read sexe
sleep 1
echo "entrez votre nom"
read name
sleep 1
echo "Entrez votre prénom"
read prenom
sleep 1
if [[ $sexe == "H" ]]; then
    echo "Bonjour Monsieur $name $prenom comment allez vous"
elif [[ $sexe == "F" ]]; then
    echo "Bonjour Madame $name $prenom comment allez vous"
else
    echo "ERROR"
fi
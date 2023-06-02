#!/bin/bash
clear
echo "entrez votre nom"
read name

if [[ $name == "Alain" || $name == "Bertrand" || $name == "Marie" ]]; then
    echo "Bienvenue $name"
else 
    echo "Vous n'etes pas autorise"
fi
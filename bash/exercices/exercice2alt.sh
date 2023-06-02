#!/bin/bash
clear
echo "entrez votre nom"
read name

case $name in
    "Alain" | "Bertrand" | "Marie" )
            echo "Bienvenue $name"
            ;;
    *)
            echo "Vous n'etes pas autorise"
            ;;
esac
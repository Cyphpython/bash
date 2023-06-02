#!/bin/bash
# Fonction pour afficher le menu principal
afficher_menu() {
    echo "Faites votre choix"
    sleep 1
    echo " A) Trouver un nombre entier compris entre 10 et 50 en 5 tentatives maximum"
    sleep 1
    echo " B) Calculer les volumes d'un prisme à base rectangulaire"
    sleep 1
    echo " C) Calculer trois tables de multiplication simultanément"
    sleep 1
    echo " Q) Quitter l'application"
}
# Fonction pour le jeu 1
jeu1() {
    clear
    echo "Vous avez choisi le jeu 1"
    sleep 1
    echo "Devinez un nombre entre 10 et 50"
    sleep 1 
    echo "Vous avez 5 tentatives"
    sleep 1
    echo "C'est parti !"
    sleep 1
    clear

    chance=5
    guess=$(( RANDOM % 41 + 10 ))

    while [[ "$guess2" != "$guess" && $chance -gt 0 ]]; do
        echo "Trouvez le nombre"
        read -p "Votre choix: " guess2

        if [[ "$guess2" -lt "$guess" ]]; then
            chance=$((chance - 1))
            echo "Le nombre est plus grand"
        elif [[ "$guess2" -gt "$guess" ]]; then
            chance=$(( chance - 1 ))
            echo "Le nombre est plus petit"
        fi

        if [[  $chance == 0  ]]; then
            printf "\nVous avez perdu\n"
            break
        fi
    done

    if [[ "$guess2" == "$guess" ]]; then
        echo "Vous avez trouvé"
        sleep 2
    fi
    echo "Appuyez sur 'M' pour revenir au menu principal ou 'Q' pour quitter."
    read -p "Votre choix: " retour

    case $retour in
        M)
            return
            ;;
        Q)
            echo "Au revoir !"
            exit
            ;;
        *)
            echo "Choix invalide. Retour au menu principal."
            sleep 2
            return
            ;;
    esac
}
# Fonction pour le jeu 2
jeu2() {
    echo "Vous avez choisi le jeu 2"
    echo "Calculez le volume d'un prisme a base rectangulaire"

    read -p " entrez une valeur " I
    read -p " entrez la Largeur " L
    read -p " entrez la Hauteur " H
    V=$((I * L * H))
    
    echo "Votre volume est de" $V "cm³"
    
    echo "Jeu 2 terminé."
    sleep 2

    echo "Appuyez sur 'M' pour revenir au menu principal ou 'Q' pour quitter."
    read -p "Votre choix: " retour

    case $retour in
        M)
            return
            ;;
        Q)
            echo "Au revoir !"
            exit
            ;;
        *)
            echo "Choix invalide. Retour au menu principal."
            sleep 2
            return
            ;;
    esac
}
# Fonction pour le jeu 3
jeu3() {
    echo "Vous avez choisi le jeu 3"
    echo "Calculez trois tables de multiplication"

    read -p "Entrez le premier nombre : " num1
    read -p "Entrez le deuxième nombre : " num2
    read -p "Entrez le troisième nombre : " num3

    echo "Table de multiplication pour $num1 :"
    for (( i = 1; i <= 10; i++ )); do
        result=$((num1 * i))
        sleep 1
        echo "$num1 x $i = $result"
    done

    echo "Table de multiplication pour $num2 :"
    for (( i = 1; i <= 10; i++ )); do
        result=$((num2 * i))
        sleep 1
        echo "$num2 x $i = $result"
    done

    echo "Table de multiplication pour $num3 :"
    for (( i = 1; i <= 10; i++ )); do
        result=$((num3 * i))
        sleep 1
        echo "$num3 x $i = $result"
    done

    echo "Jeu 3 terminé."
    sleep 2

    echo "Appuyez sur 'M' pour revenir au menu principal ou 'Q' pour quitter."
    read -p "Votre choix: " retour

    case $retour in
        M)
            return
            ;;
        Q)
            echo "Au revoir !"
            exit
            ;;
        *)
            echo "Choix invalide. Retour au menu principal."
            sleep 2
            return
            ;;
    esac
}
if [[ $choix == "Q" ]]; then
    exit
fi
# Programme principal
while true; do
    clear
    afficher_menu
    read -p "Votre choix: " choix

    case $choix in
        A)
            jeu1
            ;;
        B)
            jeu2
            ;;
        C)
            jeu3
            ;;
        Q)
            echo "Au revoir !"
            exit
            ;;
        *)
            echo "Choix invalide."
            ;;
    esac
done
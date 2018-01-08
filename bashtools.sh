#!/bin/bash -

#
# date: lundi 8 janvier 2018 - 20:58:32
# auteur: mobius00
#

# valeur du dossier contenant les librairies
$_FOLDER='./includes'
$_VAR='variables.sh'
$_FUNC='functions.sh'

# vérification existence dossier
if [[ -d "$_FOLDER" ]] && [[ -f "$_FOLDER/$_FUNC" ]] && [[ -f "$_FOLDER/$_VAR" ]];
    then
        # inclusion des fichiers 
        source $_FOLDER/$_VAR && source $_FOLDER/$_FUNC
        
        [ $? -eq 0 ] && create_message 'ok' 'inclusion des fichiers réussie' \ 
                     || echo "\e[1;31m erreur: inclusion échouée.\e[0;m"

    else
        echo -e "\e[1;31m erreur: le dossier includes est introuvable.\e[0;m"
        exit 1
fi
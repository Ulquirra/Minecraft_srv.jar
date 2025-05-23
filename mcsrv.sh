#!/bin/bash

# URL du fichier à télécharger
URL="https://piston-data.mojang.com/v1/objects/e6ec2f64e6080b9b5d9b471b291c33cc7f509733/server.jar"

# Nom du fichier de destination
DEST="server.jar"

# Téléchargement du fichier
echo "Téléchargement de server.jar depuis Mojang..."
curl -o "$DEST" "$URL"

# Vérification du téléchargement
if [ $? -eq 0 ]; then
    echo "Téléchargement réussi : $DEST"
else
    echo "Erreur lors du téléchargement."
    exit 1
fi
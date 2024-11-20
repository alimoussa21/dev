#!/bin/bash

# Construire l'image à partir du Dockerfile
docker build -t custom-postgres .

# Supprimer un ancien conteneur s'il existe déjà
docker rm -f BasePostgre 2>/dev/null

# Lancer un nouveau conteneur à partir de l'image construite
docker run --name BasePostgre -d -p 2022:5432 custom-postgres

# Afficher l'état du conteneur
docker ps | grep BasePostgre

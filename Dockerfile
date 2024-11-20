# Utiliser l'image officielle de PostgreSQL comme base
FROM postgres:latest

# Définir le mot de passe de l'utilisateur par défaut "postgres"
ENV POSTGRES_PASSWORD=rTVwEFYn1&

# Exposer le port PostgreSQL
EXPOSE 5432

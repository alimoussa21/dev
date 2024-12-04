# Lancer les conteneurs Docker
1. Assurez-vous que Docker est installé sur votre machine.
2. Placez-vous dans le répertoire contenant `docker-compose.yml`.
3. Lancez les services avec la commande :
   docker-compose up -d

# Accéder aux bases de données
- PostgreSQL : accessible sur le port 5432 (utilisateur : `user`, mot de passe : `password`).
- SQL Server : accessible sur le port 1433 (SA mot de passe : `StrongPassword123`).

# Vérifier les initialisations
- PostgreSQL : La table `metiers` sera initialisée avec des données.
- SQL Server : La table `Admins` sera initialisée avec un compte administrateur par défaut.

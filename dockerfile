# Étape de construction
FROM node:20-alpine AS builder
WORKDIR /app

# Copier les fichiers nécessaires
COPY ./react/package.json ./react/package-lock.json ./

# Installer les dépendances
RUN npm install

# Copier tout le reste du projet
COPY ./react ./

# Construire l'application React
RUN npm run build

# Étape de production
FROM node:20-alpine AS runner
WORKDIR /app

# Copier les fichiers de l'étape de construction
COPY --from=builder /app/build ./build
COPY --from=builder /app/node_modules ./node_modules

# Exposer le port
EXPOSE 3000

# Lancer le serveur
CMD ["npm", "start"]

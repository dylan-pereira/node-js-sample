# Utilisation de l'image Node.js officielle comme base
FROM node:latest

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers package.json et package-lock.json (si existant)
COPY package*.json ./

# Installation des dépendances
RUN npm install

# Copie du reste des fichiers de l'application
COPY . .

# Exposition du port utilisé par l'application (par exemple, le port 3000)
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["npm", "start"]

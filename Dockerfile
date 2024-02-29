# Utilisez une image de base légère avec Node.js
FROM node:alpine

# Définissez le répertoire de travail dans le conteneur
WORKDIR '/app'

# Copiez les fichiers de package.json et package-lock.json (ou yarn.lock)
COPY package*.json ./

# Installez les dépendances
RUN npm install

# Copiez spécifiquement les fichiers nécessaires pour le backend
COPY . .

# Commande pour démarrer votre application
CMD ["npm", "start"]
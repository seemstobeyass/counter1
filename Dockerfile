FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet
COPY . .

# Port exposé
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Copier les dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du projet
COPY . .

# Port exposé (Azure injecte PORT mais on met 3000 par défaut)
EXPOSE 3000

# Commande de lancement
CMD ["npm", "start"]
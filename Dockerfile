# Étape 1 : Utiliser l'image de base légère
FROM nginx:alpine3.23

# Copier tous les fichiers du site dans le répertoire par défaut de Nginx
COPY . /usr/share/nginx/html

# Exposer le port 80 pour le trafic web
EXPOSE 80

# (Optionnel) Démarrer Nginx en mode non-daemon
CMD ["nginx", "-g", "daemon off;"]
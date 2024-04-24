# Utiliser l'image de base Python
FROM python:3.8-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le contenu du répertoire actuel dans le répertoire de travail de l'image
COPY . /app




# Installer les dépendances Python à partir du fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000 sur lequel l'application Flask s'exécutera
EXPOSE 5000

# Définir les variables d'environnement
ENV FLASK_APP=app.py

# Commande pour exécuter l'application Flask lorsque le conteneur démarre
CMD ["python", "app.py"]





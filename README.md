# Streamex

Streama service avec nginx reverse proxy et base de données mysql.

## Installation

### env files

renommer les fichiers .env.example en .env et remplacer les valeurs par les votres.

### proxy
Premiere chose a faire, aller modifié le fichier nginx.conf et remplacer le nom de domaine par le votre.
```bash
sudo docker run-p 80:80 -v $(pwd)/proxy_reverse_data_log:/var/log/nginx -v $(pwd)/conf.d:/etc/nginx/conf.d -d nginx:alpine
```

### streama
```bash
docker build -t streama -f service.Dockerfile .
docker run --env-file streama.env -p 8080:8080 -d streama
```

### db
```bash
docker run --env-file db.env -p 3306:3306 -v $(pwd)/db_data:/var/lib/mysql -d mysql:5.7
```

### ou docker compose
Premiere chose a faire, aller modifié le fichier nginx.conf et remplacer le nom de domaine par "streama" et le port par "8080".
```bash
docker compose up -d
```
### proxy
```bash
sudo docker run --env-file proxy.env -p 80:80 -v $(pwd)/proxy_reverse_data_log:/var/log/nginx -v $(pwd)/conf.d:/etc/nginx/conf.d nginx:alpine
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

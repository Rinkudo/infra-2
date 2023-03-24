### proxy
```bash
docker build -t proxy -f proxy.Dockerfile .
docker run --env-file proxy.env -p 80:80 -v $(pwd)/proxy_reverse_data:/etc/nginx -v $(pwd)/proxy_reverse_data_log:/var/log/nginx proxy 
```

### streama
```bash
docker build -t streama -f service.Dockerfile  .
docker run --env-file streama.env -p 8080:8080 -d streama
```

### db
```bash
docker build -t db mysql:5.7
docker run --env-file db.env -p 3306:3306 -v $(pwd)/db_data:/var/lib/mysql -d db
```

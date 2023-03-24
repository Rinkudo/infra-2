FROM mysql:5.7

VOLUME [ "/var/lib/mysql" ]

ENV MYSQL_ROOT_PASSWORD=streama_root_password
ENV MYSQL_USER=streama
ENV MYSQL_DATABASE=streama
ENV MYSQL_PASSWORD=streama_password

EXPOSE 3306
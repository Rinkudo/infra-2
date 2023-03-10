FROM nginx

RUN sudo apt update && sudo apt upgrade
RUN sudo apt install nginx-plus-module-modsecurity

COPY ./modsec /etc/nginx/modsec

COPY nginx.conf /etc/nginx/nginx.conf
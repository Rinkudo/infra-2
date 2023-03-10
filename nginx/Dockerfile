FROM nginx:alpine

RUN sudo apk update && sudo apk upgrade
RUN sudo apk add nginx-plus-module-modsecurity

COPY ./modsec /etc/nginx/modsec

COPY nginx.conf /etc/nginx/nginx.conf
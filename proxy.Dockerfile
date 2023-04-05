FROM owasp/modsecurity-crs:nginx

# RUN sudo apt update && sudo apt upgrade
# RUN sudo apt install nginx-plus-module-modsecurity

COPY ./nginx/modsec /etc/nginx/modsec

COPY ./nginx/nginx.conf /etc/nginx/conf.d/proxy.conf

CMD ["nginx", "-g", "daemon off;"]
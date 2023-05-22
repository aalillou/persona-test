FROM nginx:latest

USER root
#momenteel genoeg rechten met default nginx user
#RUN adduser persona -u 1001 -g 1001 -G root -D -H && \
#    mkdir -p /deployment /logs /work && \
RUN apt-get update && \
    apt-get install nginx -y && \
    rm /usr/share/nginx/html/index.html && \
    touch /var/run/nginx.pid && \
    chown nginx:root /var/run/nginx.pid && \
    chmod 660 /var/run/nginx.pid && \
    mkdir -p /var/cache/nginx && \
    chown nginx:root /var/cache/nginx && \
    chmod -R 770 /var/cache/nginx && \
    rm /etc/nginx/conf.d/*

COPY ./nginx/default.conf /etc/nginx/conf.d
COPY ./dist/persona /usr/share/nginx/html

EXPOSE 8084

USER nginx
ENV TZ=Europe/Brussels
WORKDIR /usr/share/nginx

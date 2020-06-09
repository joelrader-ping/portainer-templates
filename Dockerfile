FROM nginx:stable-alpine

COPY templates-ping.json ping-logo.svg /usr/share/nginx/html/

EXPOSE 80

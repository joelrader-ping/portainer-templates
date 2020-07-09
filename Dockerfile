FROM nginx:stable-alpine

COPY templates-ping.json ./logos/ping-logo.svg /usr/share/nginx/html/

EXPOSE 80

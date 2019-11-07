FROM nginx:1-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY ./sites-available/default.conf /etc/nginx/sites-available/default.conf

EXPOSE 80 443

CMD ["nginx"]

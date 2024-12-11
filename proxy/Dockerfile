FROM nginx:latest
COPY 404.html /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d
COPY nginx.conf /etc/nginx


#site matheus.asa.br
RUN mkdir -p /usr/share/nginx/matheus
COPY index.html /usr/share/nginx/matheus
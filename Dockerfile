FROM nginx:latest


FROM build as dev
COPY ./dev/nginx.conf /etc/nginx/nginx.conf
COPY ./dev/server.conf /etc/nginx/conf.d/server.conf

FROM build as pord
COPY ./prod/nginx.conf /etc/nginx/nginx.conf
COPY ./prod/server.conf /etc/nginx/conf.d/server.conf


CMD ["nginx", "-g", "daemon off;"]
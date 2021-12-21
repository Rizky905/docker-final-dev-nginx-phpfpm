FROM nginx:alpine

COPY ./x-nginx/nginx.conf /etc/nginx/nginx.conf

# COPY ./x-nginx/conf.d/bono1.conf /etc/nginx/conf.d/bono1.conf
# COPY ./x-nginx/conf.d/bono2.conf /etc/nginx/conf.d/bono2.conf
# COPY ./x-nginx/conf.d/sim1-prb.conf /etc/nginx/conf.d/sim1-prb.conf
# COPY ./x-nginx/conf.d/haccp-dashboard.conf /etc/nginx/conf.d/haccp-dashboard.conf


# RUN rm -f /etc/hosts

# COPY ./x-nginx/hosts /etc

RUN rm -f /etc/nginx/conf.d/default.conf

COPY ./x-nginx/default.conf /etc/nginx/conf.d/default.conf

FROM alpine
MAINTAINER Evgeniy.Petrov(bsquid)

RUN apk update && \
    apk upgrade && \
    apk add nginx && \
    mkdir /run/nginx

ADD https://raw.githubusercontent.com/B-Squid/OTUS-LAB-16/master/index.html /var/lib/nginx/html/index.html
ADD https://raw.githubusercontent.com/B-Squid/OTUS-LAB-16/master/default.conf /etc/nginx/conf.d/default.conf

RUN chmod 644 /var/lib/nginx/html/index.html

EXPOSE 80/tcp

CMD ["nginx", "-g", "daemon off;"]

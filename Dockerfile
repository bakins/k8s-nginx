FROM gliderlabs/alpine:3.1
RUN apk --update add nginx bash curl
ADD nginx.conf /etc/nginx/nginx.conf
ADD make-ca-cert.sh /
ADD start-nginx /
EXPOSE 443
CMD ["/start-nginx"]

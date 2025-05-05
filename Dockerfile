FROM alpine:latest

RUN apk add --no-cache bash fortune-mod cowsay netcat-openbsd

COPY wisecow.sh /wisecow.sh

RUN chmod +x /wisecow.sh

EXPOSE 3000

CMD ["/wisecow.sh"]

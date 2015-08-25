FROM alpine:latest

RUN apk add --update python build-base && rm -rf /var/cache/apk/* && mkdir httpfolder
WORKDIR httpfolder
VOLUME httpfolder
ENTRYPOINT python -m SimpleHTTPServer 80

#to run
# docker run -d --restart=always --name httpfolder -p 80:80 -v /home/limbo/logs:/httpfolder httpfolder
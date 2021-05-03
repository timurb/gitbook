# loosely based on https://github.com/ThomasChln/gitbook
FROM node:9-slim

RUN npm install --global gitbook-cli &&\
	gitbook fetch &&\
	apt-get update && apt-get install calibre -y &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook
COPY book.json .
VOLUME /srv/gitbook /srv/html

RUN /usr/local/bin/gitbook install

EXPOSE 4000 4000

CMD /usr/local/bin/gitbook serve book/

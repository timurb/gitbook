# loosely based on https://github.com/ThomasChln/gitbook
FROM node:9-slim

RUN npm install --global gitbook-cli &&\
	gitbook fetch &&\
	apt-get update && apt-get install calibre -y &&\
	rm -rf /tmp/*

WORKDIR /srv/gitbook
VOLUME /srv/gitbook /srv/html

EXPOSE 4000 4000

CMD /usr/local/bin/gitbook install book && /usr/local/bin/gitbook serve source//

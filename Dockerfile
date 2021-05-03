FROM node:9-slim

RUN npm install --global gitbook-cli && gitbook fetch

WORKDIR /srv/gitbook
VOLUME /srv/gitbook /srv/html

CMD /usr/local/bin/gitbook install book && /usr/local/bin/gitbook serve source/

EXPOSE 4000 4000

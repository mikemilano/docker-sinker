FROM ubuntu

RUN apt-get install git nodejs
RUN mkdir /srv/app
RUN git clone https://github.com/substack/sinker.git /srv/app/sinker
RUN cp /srv/app/sinker/example/server.js /srv/app/server.js

EXPOSE 5000

CMD ["node", "/srv/app/server.js", "/data/code"]

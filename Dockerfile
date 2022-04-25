FROM dock.es.ecg.tools/hub.docker.com/python:3.9-alpine3.14

RUN mkdir -p /opt/server/caches/ /opt/storage/caches/
COPY server.py /opt/server/

EXPOSE 80

ENTRYPOINT /opt/server/server.py --threads=16 80 --storage=/opt/storage/

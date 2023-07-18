FROM debian:bullseye-slim

RUN apt-get update && apt-get install -yq \
    python3-pip \
    python3-gdal \
    libgdal-dev

COPY . /source/osm-export-tool-python

RUN pip3 install /source/osm-export-tool-python

COPY bin/docker_entrypoint.sh /bin/docker_entrypoint.sh

ENTRYPOINT [ "/bin/docker_entrypoint.sh" ]

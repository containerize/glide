FROM golang

ENV GLIDE_VERSION=0.10.2

RUN wget https://github.com/Masterminds/glide/releases/download/${GLIDE_VERSION}/glide-${GLIDE_VERSION}-linux-amd64.tar.gz && \
    tar xvf glide-${GLIDE_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/glide /usr/bin/
RUN rm glide-${GLIDE_VERSION}-linux-amd64.tar.gz && rm -rf linux-amd64

ENV GO15VENDOREXPERIMENT=1
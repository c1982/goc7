FROM centos:latest

ENV GOPATH=/go
ENV PATH=$PATH:/usr/local/go/bin
ENV GO111MODULE=on
ENV GOLANG_VERSION=1.11.5

RUN yum install -y git curl gcc make

RUN curl -L -o /tmp/go$GOLANG_VERSION.linux-amd64.tar.gz https://dl.google.com/go/go$GOLANG_VERSION.linux-amd64.tar.gz && \
    cd /tmp && \
    tar -C /usr/local -xzf go$GOLANG_VERSION.linux-amd64.tar.gz
    
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

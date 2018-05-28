FROM golang:alpine
MAINTAINER Florian Schrag <florian@schrag.org>

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh ca-certificates wget && \
    wget -q -O /etc/apk/keys/david@ostrovsky.org-5a0369d6.rsa.pub https://raw.githubusercontent.com/davido/bazel-alpine-package/master/david@ostrovsky.org-5a0369d6.rsa.pub && \
    wget https://github.com/davido/bazel-alpine-package/releases/download/0.13.0/bazel-0.13.0-r0.apk && \
    apk add --no-cache bazel-0.13.0-r0.apk

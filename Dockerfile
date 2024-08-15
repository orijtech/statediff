FROM golang:1.23-alpine

COPY ./ /
RUN cd / && go build
RUN apk add curl

ENV CGO_ENABLED=0
ENTRYPOINT ["/consensuswarn"]

FROM golang

ADD . /go/src/github.com/ian-plosker/UK-Chargepoints

WORKDIR /go/src/github.com/ian-plosker/UK-Chargepoints
RUN go get github.com/tools/godep
RUN godep go install github.com/ian-plosker/UK-Chargepoints

ENV PORT 8080
ENTRYPOINT /go/bin/UK-Chargepoints

EXPOSE 8080
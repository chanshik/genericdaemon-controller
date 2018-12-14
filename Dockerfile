FROM golang
RUN mkdir -p /go/src/k8s.io/genericdaemon-controller
ADD . /go/src/k8s.io/genericdaemon-controller
WORKDIR /go
RUN go get ./...
RUN go install -v ./...
CMD ["/go/bin/genericdaemon-controller"]
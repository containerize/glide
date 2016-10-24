FROM golang:1.7-alpine

RUN go get github.com/Masterminds/glide

ENTRYPOINT ["glide"]
CMD ["-v"]

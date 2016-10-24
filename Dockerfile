FROM golang:1.7-alpine

MAINTAINER llitfkitfk <llitfkitfk@gmail.com> 

RUN apk add --no-cache git

RUN go get github.com/Masterminds/glide

ENTRYPOINT ["glide"]
CMD ["-v"]

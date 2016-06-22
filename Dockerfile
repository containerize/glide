FROM golang

RUN go get github.com/Masterminds/glide

ADD entrypoint.sh /go/bin/
RUN chmod +x /go/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["sh"]

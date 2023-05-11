FROM golang:1.20-alpine

RUN apk update && apk upgrade && apk add --no-cache bash git postgresql

WORKDIR /go/src/app

COPY . .

RUN go install

CMD ["feed"]
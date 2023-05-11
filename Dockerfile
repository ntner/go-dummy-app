FROM golang:1.20-alpine

RUN apk update && apk upgrade && apk add --no-cache bash git postgresql

WORKDIR /app

COPY . .

RUN go build -o main .

CMD ["/app/main"]
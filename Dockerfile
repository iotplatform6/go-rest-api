FROM golang:latest

LABEL maintainer="Saurabh Singh Yadav <saurabh3460@gmail.com>"

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main

EXPOSE 8000

CMD ["./main"]

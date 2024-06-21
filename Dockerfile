FROM golang:1.19-alpine

WORKDIR /app

COPY . .

RUN go build -o hello-api

EXPOSE 8080

CMD ["./hello-api"]

FROM golang:1.19-alpine

WORKDIR /app

COPY . .


RUN go mod init golang-api && \
go mod tidy && \
go build -o golang-api

EXPOSE 8080

CMD ["./golang-api"]

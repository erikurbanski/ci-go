FROM golang:1.19

WORKDIR /app

COPY . .

RUN go env -w GO111MODULE=off
RUN go build -o math

CMD ["./math"]
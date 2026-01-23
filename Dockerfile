FROM golang:1.25-alpine

WORKDIR /usr/src/BinGo

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN go build -v -o /usr/local/bin/BinGo ./cmd/BinGo

CMD [ "BinGo" ]
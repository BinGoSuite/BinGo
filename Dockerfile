FROM golang:1.25-alpine

WORKDIR /usr/src/BinGo

# copy Go stuff and download modules
COPY go.mod go.sum ./
RUN go mod download

# copy the source code into the container, and the example test files
COPY cmd/BinGo ./cmd/BinGo
COPY examples ./examples

# build the BinGo binary
RUN go build -v -o ./build/BinGo ./cmd/BinGo

# set default command in the container to run BinGo build
CMD [ "build/BinGo" ]
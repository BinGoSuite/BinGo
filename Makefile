.PHONY: build run build-windows

build: 
	go build -o ./build/BinGo/BinGo ./cmd/BinGo

build-windows:
	go env -w GOOS=windows GOARCH=amd64 && go build -o ./build/BinGo/BinGo.exe ./cmd/BinGo

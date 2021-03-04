.PHONY: build

build: *.go
	go build -ldflags "-s -w"

deploy: build
	serverless deploy -v

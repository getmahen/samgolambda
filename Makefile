.PHONY: deps clean build

deps:
	go get -u -v ./...

clean: 
	rm -rf ./checkipaddress/checkipaddress
	
build: clean
	GOOS=linux GOARCH=amd64 go build -o checkipaddress/checkipaddress ./checkipaddress
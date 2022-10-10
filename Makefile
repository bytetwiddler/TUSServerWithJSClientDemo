app="tcserver"

build: mkuploads tidy
	go build -o ${app} main.go

run:  mkuploads tidy
	if [ ! -d "uploads" ]; then mkdir uploads; fi 
	go run main.go

mkuploads:
	if [ ! -d "uploads" ]; then mkdir uploads; fi

tidy:
	go mod tidy

compile: clean mkuploads tidy
	echo "Compiling for common os and platforms"
	GO386=softfloat GOOS=linux GOARCH=386 go build -o bin/${app}-linux-386 main.go
	GOOS=linux GOARCH=amd64 go build -o bin/${app}-linux-amd64 main.go
	GO386=softfloat GOOS=windows GOARCH=386 go build -o bin/${app}-windows-386.exe main.go
	GOOS=windows GOARCH=amd64 go build -o bin/${app}-windows-amd64.exe  main.go
	GOOS=darwin GOARCH=amd64 go build -o bin/${app}-darwin-amd64 main.go

all: clean compile

clean: 
	rm -rf bin ${app} uploads
	

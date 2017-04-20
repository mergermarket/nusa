#!/usr/bin/env bash

set -e

go test ./...

echo "Compiling for windows"
GOOS=windows GOARCH=386 go build -o bin/nusa.exe

echo "Compiling for darwin/386"
GOOS=darwin GOARCH=386 go build -o bin/nusa_darwin

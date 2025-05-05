#!/usr/bin/env bash

# Simple web server using netcat to serve fortune+cowsay
PORT=3000

echo "Starting Wisecow server on port $PORT..."

while true; do
  { 
    echo -ne "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\n";
    cowsay "$(fortune)"
  } | nc -l -p $PORT -q 1;
done

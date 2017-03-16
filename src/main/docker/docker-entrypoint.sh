#!/bin/bash
set -euo pipefail

run_server(){
    java -cp /jghw.jar io.github.waleedsamy.helloworld.HelloWorldServer
}

run_client(){
    java -DserverIP=$1 -DserverPort=$2 -cp /jghw.jar io.github.waleedsamy.helloworld.HelloWorldClient
}

if [ $1 == "server" ]; then
    run_server
elif [ $1 == "client" ]; then
    run_client server 50051
else
  echo "supported argument is server or client"
fi
java-grpc-hello-world
> Java grpc hello world

#### Build
```bash
    # build jar
    # build jar + dependencies
    # build docker image java-grpc-hello-world with tag latest and `${project.version}`
    mvn clean install docker:build
```

#### Run Server
```bash
    java -cp target/java-grpc-hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.waleedsamy.helloworld.HelloWorldServer
```

#### Run client
```bash
    java -cp target/java-grpc-hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.waleedsamy.helloworld.HelloWorldClient

```

#### Run with docker
```bash
    docker run -d --name server java-grpc-hello-world server
    docker run -d --name client --link server java-grpc-hello-world client
```
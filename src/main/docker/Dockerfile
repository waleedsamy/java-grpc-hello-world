FROM java

ADD docker-entrypoint.sh /docker-entrypoint.sh

ADD java-grpc-hello-world-1.0-SNAPSHOT-jar-with-dependencies.jar /jghw.jar

ENV JAVA_OPTS=""

EXPOSE 50051

ENTRYPOINT ["/docker-entrypoint.sh"]
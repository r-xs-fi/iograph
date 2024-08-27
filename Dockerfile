FROM alpine:latest

ENTRYPOINT ["java", "-jar", "/usr/bin/IOGraph.jar"]

WORKDIR /workspace

RUN apk add openjdk21-jre fontconfig font-noto \
  && wget -O /usr/bin/IOGraph.jar https://github.com/anatolyzenkov/IOGraph/releases/download/v1.0.3/IOGraph_v1_0_3.jar

# run as unprivileged user
USER 1000:1000

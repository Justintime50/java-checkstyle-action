FROM openjdk:15.0-slim

COPY ./src/bin /checkstyle/bin
COPY ./src/config /checkstyle/config
COPY ./src/scripts/run-checkstyle.sh /checkstyle/run-checkstyle.sh

WORKDIR /checkstyle

ENTRYPOINT [ "./run-checkstyle.sh" ]

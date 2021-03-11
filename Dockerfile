FROM openjdk:15-alpine

ARG CHECKSTYLE_VERSION=8.41

COPY ./src/config /checkstyle/config
COPY ./src/scripts/run-checkstyle.sh /checkstyle/run-checkstyle.sh

RUN wget -O - -q https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${CHECKSTYLE_VERSION}/checkstyle-${CHECKSTYLE_VERSION}-all.jar > /checkstyle/checkstyle.jar

ENTRYPOINT [ "/checkstyle/run-checkstyle.sh" ]

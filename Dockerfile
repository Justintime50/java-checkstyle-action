FROM openjdk:15-slim

ARG CHECKSTYLE_VERSION=8.41

COPY ./src/config /checkstyle/config
COPY ./src/scripts/run-checkstyle.sh /checkstyle/run-checkstyle.sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    && curl -LJ https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${CHECKSTYLE_VERSION}/checkstyle-${CHECKSTYLE_VERSION}-all.jar > /checkstyle/checkstyle.jar

ENTRYPOINT [ "/checkstyle/run-checkstyle.sh" ]

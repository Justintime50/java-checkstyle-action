FROM openjdk:15-slim

ARG CHECKSTYLE_VERSION=8.41

COPY ./src/style-suites /checkstyle/style-suites
COPY ./src/scripts/run-checkstyle.sh /checkstyle/run-checkstyle.sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    # Install curl
    curl=7.* \
    # Download the checkstyle.jar file
    && curl -LJs https://github.com/checkstyle/checkstyle/releases/download/checkstyle-${CHECKSTYLE_VERSION}/checkstyle-${CHECKSTYLE_VERSION}-all.jar > /checkstyle/checkstyle.jar \
    # Clean up
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/checkstyle/run-checkstyle.sh" ]

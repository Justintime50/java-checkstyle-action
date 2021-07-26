#!/bin/bash

main() {
    echo "Downloading Checkstyle suites..."
    curl -LJs https://raw.githubusercontent.com/checkstyle/checkstyle/master/src/main/resources/google_checks.xml > style-suites/google_suite.xml
    curl -LJs https://raw.githubusercontent.com/checkstyle/checkstyle/master/src/main/resources/sun_checks.xml > style-suites/sun_suite.xml
}

main

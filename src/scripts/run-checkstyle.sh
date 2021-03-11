#!/bin/bash

WORKING_DIR=${1:=""}
CONFIG_FILE=${2:-"google_checks.xml"}

main() {
    echo "Running Checkstyle..."
    if java -jar /checkstyle/checkstyle.jar /github/workspace/"$WORKING_DIR" -c /checkstyle/config/"$CONFIG_FILE" | grep -q 'WARN' || 'ERROR'; then
        echo "Warnings or errors found in your code!"
        exit 1
    fi
}

main

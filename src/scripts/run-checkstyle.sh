#!/bin/bash

WORKING_DIR=${1:=""}
CONFIG_FILE=${2:-"google_checks.xml"}

main() {
    echo "Running Checkstyle..."
    checkstyle_command

    # Properly exit if there are errors or warnings
    if checkstyle_command | grep -q 'ERROR' || checkstyle_command | grep -q 'WARN'; then
        echo "Warnings or errors found in your code!"
        exit 1
    fi
}

checkstyle_command() {
    java -jar /checkstyle/checkstyle.jar /github/workspace/"$WORKING_DIR" -c /checkstyle/config/"$CONFIG_FILE"
}

main

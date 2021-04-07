#!/bin/bash

WORKING_DIR=${1:-""}
CONFIG_FILE=${2:-"google"}

main() {
    echo "Running Checkstyle..."
    validate_style_suite
    checkstyle_command

    # Properly exit if there are errors or warnings
    if checkstyle_command | grep -q 'ERROR' || checkstyle_command | grep -q 'WARN'; then
        echo "Warnings or errors found in your code!"
        exit 1
    fi
}

validate_style_suite() {
    if [[ "$CONFIG_FILE" != "google" && "$CONFIG_FILE" != "sun" ]]; then
        echo "'config_file' option must be either 'google' or 'sun'."
        exit 1
    fi
}

checkstyle_command() {
    java -jar /checkstyle/checkstyle.jar /github/workspace/"$WORKING_DIR" -c /checkstyle/style-suites/"$CONFIG_FILE"_suite.xml
}

main

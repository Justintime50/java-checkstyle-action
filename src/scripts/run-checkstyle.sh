#!/bin/bash

CHECKSTYLE_JAR="checkstyle-8.41-all.jar"
CONFIG_FILE=${2:-"google_checks.xml"}
WORKING_DIR="$1"

main() {
    # Recursively run Checkstyle on the following directory
    # This script will run from `/github/workspace/checkstyle`
    java -jar bin/"$CHECKSTYLE_JAR" -c config/"$CONFIG_FILE" ../"$WORKING_DIR"
}

main

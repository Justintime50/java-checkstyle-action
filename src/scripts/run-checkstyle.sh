#!/bin/bash

CHECKSTYLE_JAR="checkstyle-8.41-all.jar"
CONFIG_FILE=${2:-"google_checks.xml"}
WORKING_DIR="$1"

main() {
    # Recursively run Checkstyle on the following directory
    java -jar bin/"$CHECKSTYLE_JAR" -c config/"$CONFIG_FILE" /github/workspace/"$WORKING_DIR"
}

main

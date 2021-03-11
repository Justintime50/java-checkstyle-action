<div align="center">

# Java Checkstyle GitHub Action

Run [Java Checkstyle](https://github.com/checkstyle/checkstyle) in a command line context via GitHub Actions.

[![Build](https://github.com/Justintime50/java-checkstyle-action/workflows/build/badge.svg)](https://github.com/Justintime50/java-checkstyle-action/actions)
[![Licence](https://img.shields.io/github/license/Justintime50/java-checkstyle-action)](LICENSE)

<img src="assets/showcase.png" alt="Showcase">

</div>

I wanted a simple way to lint my Java projects. Other Checkstyle actions used `reviewdog` in conjunction with Checkstyle which I didn't want, nor did I want to drop a `12mb jar file` into each of my projects individually. This project aims to be as basic a linting solution as possible.

## Usage

### GitHub Actions YML

```yml
name: checkstyle

on: [push, pull_request]

jobs:
  java-checkstyle:
    runs-on: ubuntu-latest
    name: java-checkstyle
    steps:
      - name: Run Java Checkstyle
        uses: Justintime50/java-checkstyle-action@v1
        with:
          # The directory to run Checkstyle recursively on.
          # Required.
          directory: /path/to/dir

          # The name of the config file to be used, either 'sun_checks.xml' or 'google_checks.xml'.
          # Default is shown.
          config_file: google_checks.xml
```

### Run Manually

```bash
# Script, directory, config_file
./run-checkstyle.sh /path/to/dir/to/lint sun_checks.xml
```

## Development

```bash
# Lint the script
shellcheck src/scripts/run-checkstyle.sh

# Lint the Dockerfile
hadolint Dockerfile
```

## Attribution

* Icons made by <a href="https://www.freepik.com" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>

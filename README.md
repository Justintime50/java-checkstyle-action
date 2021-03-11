<div align="center">

# Java Checkstyle GitHub Action

Run [Java Checkstyle](https://github.com/checkstyle/checkstyle) in a command line context via GitHub Actions.

[![Build](https://github.com/Justintime50/java-checkstyle-action/workflows/build/badge.svg)](https://github.com/Justintime50/java-checkstyle-action/actions)
[![Licence](https://img.shields.io/github/license/Justintime50/java-checkstyle-action)](LICENSE)

<img src="assets/showcase.png" alt="Showcase">

</div>

I wanted a simple way to lint my Java projects. Other Checkstyle actions used `reviewdog` in conjunction with Checkstyle which I didn't want, nor did I want to drop a `12mb jar file` into each of my projects individually. This project aims to be as basic a linting solution as possible.

**Sample Output**

```bash
[WARN] /batches/BuyBatch.java:82:5: 'method def rcurly' has incorrect indentation level 4, expected level should be 2. [Indentation]
[WARN] /shipments/CreateShipment.java:8:1: Extra separation in import group before 'com.easypost.EasyPost' [CustomImportOrder]
[WARN] /shipments/CreateShipment.java:8:1: Wrong lexicographical order for 'com.easypost.EasyPost' import. Should be before 'java.util.Map'. [CustomImportOrder]
...
```

## Usage

```yml
name: checkstyle

on: [push, pull_request]

jobs:
  java-checkstyle:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2
      - name: Run Java Checkstyle
        uses: Justintime50/java-checkstyle-action@v1
        with:
          # The directory to run Checkstyle recursively on.
          # Default is the root of your project.
          directory: /path/to/dir

          # The name of the config file to be used, either 'sun_checks.xml' or 'google_checks.xml'.
          # Default is shown.
          config_file: google_checks.xml
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

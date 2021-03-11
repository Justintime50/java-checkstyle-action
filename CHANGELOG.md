# CHANGELOG

## v0.2.0 (2021-03-10)

* Removed jar from the repo and will instead download it as part of the Dockerfile build
* Step should now fail if `WARN` or `ERROR` is returned from the check
* Switched from `slim` to `alpine` image
* Refactored script to be easier to read

## v0.1.4 (2021-03-10)

* Made `directory` not required and will assume the root directory when not present
* Bug fix for script references to jar and config file

## v0.1.1-v0.1.3 (2021-03-10)

* Bug fix for `WORKDIR` in Dockerfile

## v0.1.0 (2021-03-10)

* Initial release
* Specify a directory to run linting on
* Specify to use either `google_checks.xml` or `sun_checks.xml`

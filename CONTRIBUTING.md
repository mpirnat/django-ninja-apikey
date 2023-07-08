# Contributing

## Setup

Django Ninja API key uses Poetry to build the project.

To set up the project for local development,
begin by [installing Poetry](https://python-poetry.org/docs/#installation).

Then install the project:

```
make install
```

Then you can check that it all worked with:

```
make test
```

## Tests

Please make sure to write tests for your changes.
You can run the tests with:

```
make test
```

Also make sure the test coverage did not suffer with your contribution:

```
make cov
```

## Style and Linting

You can format the code with:

```
make format
```

Before opening a pull request run all linters:

```
make lint
```
.DEFAULT_GOAL := build

install: # Install dependencies
	poetry install

fmt format: # Run code formatters
	poetry run ruff check --select I --fix-only ninja_apikey
	poetry run black .

lint: # Run code linters
	poetry run black --check --diff --color .
	poetry run ruff check --select E,W,F,I,S,B --show-source ninja_apikey
	poetry run mypy --strict ninja_apikey/security.py

test: # Run tests
	poetry run pytest --ds=sample_project.settings -v sample_project ninja_apikey/tests.py

cov test-cov: # Run tests with coverage
	poetry run pytest --ds=sample_project.settings --cov=ninja_apikey --cov-report=term-missing --cov-report=xml -v sample_project ninja_apikey/tests.py

build: # Build project
	make install
	make lint
	make cov

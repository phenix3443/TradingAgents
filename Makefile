.DEFAULT_GOAL := run

.PHONY: install run login lint test check

install:
	poetry install

run:
	poetry run python -m cli.main $(ARGS)

login:
	poetry run python -m cli.main login chatgpt

lint:
	poetry run ruff check .

test:
	poetry run pytest -q

check: lint test

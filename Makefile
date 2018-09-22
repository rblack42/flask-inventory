.DEFAULT_GOAL	:= all

.PHONY: reqs
reqs:
	pip install --upgrade pip
	pip install -r requirements-dev.txt

_venv:
	python3 -m venv _venv

.PHONY:	all
all:
	python run.py

.PHONY: test
test:	changes
	flake8
	pytest --cov=./

.PHONY: changes
changes:
	git log --oneline --pretty=format:"* %ad: %s\n" --date=short > CHANGES.rst



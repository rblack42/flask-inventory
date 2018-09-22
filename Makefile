.PHONY: reqs
reqs:
	pip install --upgrade pip
	pip install -r requirements.txt

_venv:
	python3 -m venv _venv

.PHONY:	all
all:	_venv
	pytest

.PHONY: test
test:	_venv/bin/pytest
	pytest

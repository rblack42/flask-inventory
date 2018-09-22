.DEFAULT_GOAL	:= all

.PHONY: reqs
reqs:
	pip install --upgrade pip
	pip install -r requirements.txt

_venv:
	python3 -m venv _venv

.PHONY:	all
all:	_venv
	nose

.PHONY: test
test:	_venv/bin/pytest
	_venv/bin/pytest

CHANGES.rst:
	git log --oneline --pretty=format:"* %ad: %s\n" --date=short > $@



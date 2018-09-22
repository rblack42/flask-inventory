.DEFAULT_GOAL	:= all

.PHONY: reqs
reqs:
	pip install --upgrade pip
	pip install -r requirements.txt

_venv:
	python3 -m venv _venv

.PHONY:	all
all:	_venv
	_venv/bin/nosetests

.PHONY: test
test:	_venv/bin/nosetests
	_venv/bin/nosetests --with-coverage

CHANGES.rst:
	git log --oneline --pretty=format:"* %ad: %s\n" --date=short > $@



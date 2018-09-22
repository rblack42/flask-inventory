.DEFAULT_GOAL	:= all

.PHONY: reqs
reqs:
	pip install --upgrade pip
	pip install -r requirements.txt

_venv:
	python3 -m venv _venv

.PHONY:	all
all:
	nosetests

.PHONY: test
test:
	nosetests --with-coverage

CHANGES.rst:
	git log --oneline --pretty=format:"* %ad: %s\n" --date=short > $@



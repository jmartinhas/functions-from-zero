install:
	pip install --upgrade pip && pip install -r requirements.txt
	python -m textblob.download_corpora

test:
	python -m pytest -vvv --cov=wikiphrases --cov=nlplogic test_corenlp.py

debug:
	python -m pytest -vv --pdb

one-test:
	python -m pytest -vv tests/test_greeting.py

debugthree:
	python -m pytest -vv --pdb maxfail=4

format:
	black *.py nlplogic

lint :
	pylint --disable=R,C *.py nlplogic/*.py

all: install test lint
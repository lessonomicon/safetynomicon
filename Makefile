# Runnable tasks.

all: commands

HTML_IGNORES = 'Attribute "x-' 'Attribute "@click' 'Attribute "file"'

## commands: show available commands (*)
commands:
	@grep -h -E '^##' ${MAKEFILE_LIST} \
	| sed -e 's/## //g' \
	| column -t -s ':'

## clean: clean up
clean:
	@find . -type f -name '*~' -exec rm {} \;
	@find . -type d -name __pycache__ | xargs rm -r
	@find . -type d -name .pytest_cache | xargs rm -r
	@find . -type d -name .ruff_cache | xargs rm -r

## build: build HTML
build:
	mccole build
	@touch docs/.nojekyll

## lint: check code and project
lint:
	@ruff check --exclude docs .
	@mccole lint
	@html5validator --root docs --blacklist templates --ignore ${HTML_IGNORES} \
	&& echo "HTML checks passed."

## profile: render with profiling
profile:
	mccole profile
	@touch docs/.nojekyll

## refresh: refresh all file inclusions
refresh:
	mccole refresh --files *_*/index.md

## serve: serve generated HTML
serve:
	@python -m http.server -d docs $(PORT)

## stats: basic site statistics
stats:
	@mccole stats
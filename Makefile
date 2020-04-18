SHELL := /bin/bash
NPM := npm
VENDOR_DIR = assets/vendor/
BUNDLER := bundler
PROJECT_DEPS := package.json

.PHONY: all clean install update

all : serve

check:
	$(JEKYLL) doctor
	$(HTMLPROOF) --check-html \
		--http-status-ignore 999 \
		--internal-domains localhost:4000 \
		--assume-extension \
		_site

install: $(PROJECT_DEPS)
	$(BUNDLER) install
	$(NPM) install

update: $(PROJECT_DEPS)
	$(NPM) update

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.map $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js.map $(VENDOR_DIR)

build: include-npm-deps
	$(BUNDLER) exec jekyll build

serve: include-npm-deps
	$(BUNDLER) exec jekyll serve

bundler:
	$(BUNDLER)

watch: include-npm-deps
	$(BUNDLER) exec jekyll serve --watch

SHELL := /bin/bash
NPM := npm
VENDOR_DIR = assets/vendor/
BUNDLER := bundle
PROJECT_DEPS := package.json

.PHONY: all clean install update

all : serve

check:
	jekyll doctor
	htmlproofer --check-html \
		--disable-external \
		_site

install: $(PROJECT_DEPS)
	$(BUNDLER) install
	$(NPM) install

clean:
	jekyll clean

update: $(PROJECT_DEPS)
	$(NPM) update

include-npm-deps:
	mkdir -p $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.js $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js $(VENDOR_DIR)
	cp node_modules/jquery/dist/jquery.min.map $(VENDOR_DIR)
	cp node_modules/bootstrap/dist/js/bootstrap.min.js.map $(VENDOR_DIR)

build: include-npm-deps
	JEKYLL_ENV=production $(BUNDLER) exec jekyll build

bundler:
	$(BUNDLER)

watch: include-npm-deps
	$(BUNDLER) exec jekyll serve --host=0.0.0.0 2>/dev/null

SHELL = /bin/bash

.PHONY: default
default:

.PHONY: clean
clean:
	rm -rf node_modules build

build: public/assets/style.css
	rm -rf build
	cp -a public build
	cp build/index.html build/404.html

.PHONY: dev
dev:
	make -j2 dev-all

.PHONY: dev-all
dev-all: dev-server dev-style

.PHONY: dev-server
dev-server:
	node src/dev.js

.PHONY: dev-style
dev-style:
	npx tailwindcss -i src/style.css -o public/assets/style.css --watch

public/assets/style.css: node_modules src/style.css
	npx tailwindcss -i src/style.css -o public/assets/style.css

node_modules/.package-lock.json: package.json package-lock.json
	npm clean-install
	[ -f node_modules/.package-lock.json ] && touch node_modules/.package-lock.json

node_modules: node_modules/.package-lock.json

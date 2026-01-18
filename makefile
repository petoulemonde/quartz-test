help: 
	@echo off
	@echo serve: emuler le site
	@echo build: construire le site
	@echo sync: pousser dans github
	@echo doc: imprimer la doc

doc:
	npx quartz build --serve -d docs

build:
	npx quartz build

serve:
	npx quartz build --serve --watch

sync:
	@echo not configured ...
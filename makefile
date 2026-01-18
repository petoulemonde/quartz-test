help: 
	@echo off
	@echo serve: emuler le site
	@echo build: construire le site
	@echo sync: pousser dans github
	@echo doc: imprimer la doc

doc:
	npx quartz build --serve -d docs

build:
	npx quartz build --output docs
	git add *
	git commit -m "$(commit)"
	git push -u github master

serve:
	npx quartz build --serve --watch

git-log:
	git log --oneline --graph --decorate --first-parent
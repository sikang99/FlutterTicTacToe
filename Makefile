#
# Makefile for swig-example
#
all: usage
usage:
	@echo "make [edit|build|run]"

edit e:
	vi lib/main.dart

unzip:
	unzip linux_launcher.zip
	#unzip macos_launcher.zip

build b:
	flutter packages get
	flutter build bundle

debug:
	flutter attach --device-id=flutter-tester --debug-port=49494

run r:
	#flutter run
	./flutter_launcher	

#------------------------------------------------------------------------------
git g:
	@echo ""
	@echo "make (git) [update|login|tag|status]"
	@echo ""

git-update gu:
	git add *.md Makefile lib/ android/ ios
	git commit -m "initial update commit"
	git push -u origin master 

git-remove gr:
	git rm -r <directory>
	git commit -m "Remove duplicated directory"
	git push origin master

git-login gl:
	git config --global user.email "sikang99@gmail.com"
	git config --global user.name "Stoney Kang"
	git config --global push.default matching
	#git config --global push.default simple
	git config credential.helper store

git-tag gt:
	git tag v0.0.5
	git push --tags

git-status gs:
	git status
	git log --oneline -5
# ---------------------------------------------------------------------------


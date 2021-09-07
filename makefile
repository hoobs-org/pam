pam: paths
	npm pack
	mv hoobs-pam-$(shell project version).tgz builds/
	rm -f *.tgz

paths:
	mkdir -p builds

publish:
	../node_modules/.bin/yarn publish --access public --new-version $(shell project version)

clean:
	rm -f *.tgz

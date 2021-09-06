pam: paths
	npm pack
	mv hoobs-pam-$(shell project version).tgz builds/

paths:
	mkdir -p builds

publish:
	npm adduser
	npm publish --access public

clean:
	rm -f *.tgz

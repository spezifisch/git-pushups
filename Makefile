install: install_hook install_home_.local

install_hook:
	mkdir -p ~/.git-templates/hooks
	chmod 755 src/post-push
	# we don't know what's in there, ask before overwriting
	cp -i src/post-push ~/.git-templates/hooks

install_home_.local:
	mkdir -p ~/.local/bin
	chmod 755 src/countpushup
	# don't prompt for overwrite because it's probably an old version of us
	cp src/countpushup ~/.local/bin


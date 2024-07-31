install: install_hook_default install_home_.local

install_hook_default: # ...in home, this applies to new repos only
	mkdir -p ~/.git-templates/hooks
	chmod 755 src/countpushup_post-commit
	# we don't know what's in there, ask before overwriting
	cp -i src/countpushup_post-commit ~/.git-templates/hooks/post-commit

install_home_.local:
	mkdir -p ~/.local/bin
	# don't prompt for overwrite because it's probably an old version of us
	install -m 755 src/countpushup ~/.local/bin
	install -m 755 src/countpushup_install_hook ~/.local/bin
	install -m 755 src/countpushup_post-commit ~/.local/bin


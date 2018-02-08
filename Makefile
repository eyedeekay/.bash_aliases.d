help:
	echo "to enable, do make install-local"

install:
	install -m755 bin/mdget /usr/bin/mdget
	install -m755 bin/linkget /usr/bin/linkget
	mkdir -p /usr/lib/fireaxe-aliases/
	cp aliases_settings /usr/lib/fireaxe-aliases/
	cp -v bash_aliases_* /usr/lib/fireaxe-aliases/
	cp envsetup.sh check.sh Makefile /usr/lib/fireaxe-aliases
	mkdir -p /usr/share/doc/fireaxe-aliases/
	cp README.md /usr/share/doc/fireaxe-aliases/

install-global:
	grep -i ". /usr/lib/fireaxe-aliases/envsetup.sh" ${HOME}/.bash_aliases 1> /dev/null || echo ". /usr/lib/fireaxe-aliases/envsetup.sh" | tee -a ${HOME}/.bash_aliases
	. ${HOME}/.bash_aliases

install-local:
	touch ${HOME}/.bash_aliases; \
	mkdir -p ${HOME}/.bash_aliases.d/; \
	cp -R .  ${HOME}/.bash_aliases.d/; rm -rf ${HOME}/.bash_aliases.d/.git; \
	grep -i ". ${HOME}/.bash_aliases.d/envsetup.sh" ${HOME}/.bash_aliases 1> /dev/null || echo ". ${HOME}/.bash_aliases.d/envsetup.sh" | tee -a ${HOME}/.bash_aliases
	. ${HOME}/.bash_aliases

test:
	./check.sh

deb:
	checkinstall --install=no \
		--fstrans=yes \
		--default \
		--pkgname=fireaxe-bash-aliases \
		--pkgversion=0.2 \
		--pkglicense=mit \
		--pkgsource=https://github.com/cmotc/.bash_aliases.d \
		--maintainer=problemsolver@openmailbox.org \
		--pakdir=.. \
		--deldoc=yes \
		--deldesc=yes \
		--backup=no

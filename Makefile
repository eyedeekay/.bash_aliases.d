help:
	echo "to enable, do make install"

install:
	mkdir -p ${HOME}/.bash_aliases.d/; \
	cp -R .  ${HOME}/.bash_aliases.d/; rm -rf ${HOME}/.bash_aliases.d/.git
	grep -iv ". ${HOME}/bash_aliases.d/envsetup.sh" ${HOME}/.bash_aliases 1> /dev/null && echo ". ${HOME}/.bash_aliases.d/envsetup.sh" tee -a ${HOME}/.bash_aliases
	. ${HOME}/.bash_aliases

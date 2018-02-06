
In envsetup.sh line 4:
    . /usr/lib/fireaxe-aliases/aliases_settings
    ^-- SC1091: Not following: /usr/lib/fireaxe-aliases/aliases_settings was not specified as input (see shellcheck -x).


In envsetup.sh line 8:
    . "$HOME/.bash_aliases/aliases_settings"
    ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


In envsetup.sh line 13:
    . "$file"
    ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


In envsetup.sh line 18:
    . "$file"
    ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


In envsetup.sh line 24:
        . "$file"
        ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


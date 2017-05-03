
In envsetup.sh line 4:
for file in $(find $HOME/.bash_aliases.d/ -name 'bash_*_aliases'); do
            ^-- SC2044: For loops over find output are fragile. Use find -exec or a while read loop.
                   ^-- SC2086: Double quote to prevent globbing and word splitting.


In envsetup.sh line 6:
        . "$file"
        ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


In envsetup.sh line 10:
        for file in $(find $HOME/.bash_aliases.d/ -name 'bash_*_aliases'); do
                    ^-- SC2044: For loops over find output are fragile. Use find -exec or a while read loop.
                           ^-- SC2086: Double quote to prevent globbing and word splitting.


In envsetup.sh line 12:
                . "$file"
                ^-- SC1090: Can't follow non-constant source. Use a directive to specify location.


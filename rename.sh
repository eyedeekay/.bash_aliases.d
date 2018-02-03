#! /usr/bin/env sh

for f in bash_*_aliases; do
    mv $f "$(echo $f | sed 's|_aliases||g' | sed 's|_|_aliases_|g')"
done

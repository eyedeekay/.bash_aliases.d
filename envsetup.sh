#! /usr/bin/env bash

if [ -f /usr/lib/fireaxe-aliases/aliases_settings ]; then
    . /usr/lib/fireaxe-aliases/aliases_settings
fi

if [ -f "$HOME/.bash_aliases/aliases_settings" ]; then
    . "$HOME/.bash_aliases/aliases_settings"
fi

for file in /usr/lib/fireaxe-aliases/bash_aliases_*; do
    echo "loading aliases file: $file"
    . "$file"
done

for file in $HOME/.bash_aliases.d/bash_aliases_*; do
    echo "loading aliases file: $file"
    . "$file"
done

reload_aliases(){
    for file in $HOME/.bash_aliases.d/bash_aliases_*; do
        echo "loading aliases file: $file"
        . "$file"
    done
}

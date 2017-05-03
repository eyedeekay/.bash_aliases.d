#! /usr/bin/env bash


for file in $HOME/.bash_aliases.d/bash_*_aliases; do
        echo "loading aliases file: $file"
        . "$file"
done

reload_aliases(){
        for file in $HOME/.bash_aliases.d/bash_*_aliases; do
                echo "loading aliases file: $file"
                . "$file"
        done
}

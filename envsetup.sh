#! /usr/bin/env bash


for file in $(find $HOME/.bash_aliases.d/ -name 'bash_*_aliases'); do
        echo "loading aliases file: $file"
        . "$file"
done

reload_aliases(){
        for file in $(find $HOME/.bash_aliases.d/ -name 'bash_*_aliases'); do
                printf "loading aliases file: $file"
                . "$file"
        done
}

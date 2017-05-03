#! /usr/bin/env sh

mkdir -p ./tests

for file in ./*aliases; do
        shellcheck "$file" | tee "tests/$file.test"
done

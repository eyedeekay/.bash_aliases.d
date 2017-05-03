#! /usr/bin/env sh

mkdir -p ./tests

shellcheck envsetup.sh "tests/envsetup.sh"

for file in ./*aliases; do
        shellcheck "$file" | tee "tests/$file.test"
done

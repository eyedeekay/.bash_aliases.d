#! /usr/bin/env sh

mkdir -p ./tests

shellcheck envsetup.sh | tee "tests/envsetup.sh"

for file in ./bash_aliases_*; do
        shellcheck -x "$file" | tee "tests/$file.test"
done

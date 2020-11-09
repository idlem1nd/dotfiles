#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

files=$(find . -type f -name ".*");
for file in $files
do
	target=$PWD/$(basename $file)
	src=../$(basename $file)
	echo linking $target to $src
	ln -sf $target $src
done

#!/bin/bash

rev=$(git log --pretty=format:'' | wc -l)
build=$(git rev-parse --short HEAD)
_ver=$(git describe --tags $(git rev-list --tags --max-count=1))

if [ -z "$1" ]; then
	echo -e "${_ver}.r${rev}-b${build}\c"
	exit 0
fi

if [ "$1" = "build" ]; then
	echo -e "${build}\c"
	exit 0
fi

if [[ "$1" = "revision" || "$1" = "rev" ]]; then
	echo -e "${rev}\c"
	exit 0
fi

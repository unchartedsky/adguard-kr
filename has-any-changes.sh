#!/bin/bash -e

CHANGED=$(git status --porcelain)

if [[ -n "${CHANGED}" ]]; then
	exit 0
fi

exit 1
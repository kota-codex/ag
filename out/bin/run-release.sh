#!/bin/bash
set -euo pipefail
AGDIR=$(dirname "${BASH_SOURCE[0]}")
"$AGDIR/bin/agc" -src . -src "$AGDIR/lib" -start "$1" -o "$1.o" -O3 -L "$1.lnk" -D "$1.dep"

read -r line <"$1.lnk"
# shellcheck disable=SC2206
libs=($line)
gcc -no-pie "${libs[@]}" -lm -o "$1"

read -r line <"$1.dep"
# shellcheck disable=SC2206
deps=($line)
for f in "${deps[@]}"; do
	cp -u "$f" ./
done
"./$1"

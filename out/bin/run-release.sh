#!/bin/bash
set -euo pipefail

AG_DIR="$(dirname "${BASH_SOURCE[0]}")"
SRC_DIR="$(dirname "$1")"
OUT_NAME="$(basename "$1")"
OUT_NAME="${OUT_NAME%.*}"  # remove ext

"$AG_DIR/agc" -O3 -src "$SRC_DIR" \
    -src "$AG_DIR/../lib::https://aglang.org/wp-json/repo/v1" \
    -start "$OUT_NAME" -o "$OUT_NAME" -L lnk.txt -D dep.txt
objs=$(<lnk.txt)
if [ "$(uname -s)" = "Darwin" ]; then
    clang -o "$OUT_NAME" $objs -g -Wl,-no_pie
else
    gcc -o "$OUT_NAME" $objs -g -lm -no-pie
fi

deps=$(<dep.txt)
for f in $deps; do
    cp -u "$f" .
done
"./$OUT_NAME"

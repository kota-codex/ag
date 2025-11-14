#!/bin/bash
set -euo pipefail

AG_DIR="$(dirname "${BASH_SOURCE[0]}")"
SRC_DIR="$(dirname "$1")"
OUT_NAME="$(basename "$1")"
OUT_NAME="${OUT_NAME%.*}"  # remove ext

"$AG_DIR/agc" \
    -g \
    -src "$SRC_DIR" \
    -src "$AG_DIR/../lib::https://aglang.org/wp-json/repo/v1" \
    -start "$OUT_NAME" \
    -O0 \
    -o "$OUT_NAME" \
    -L lnk.txt \
    -D dep.txt
objs=$(<lnk.txt)
gcc -no-pie -o "$OUT_NAME" $objs -g -lm

deps=$(<dep.txt)
for f in $deps; do
    cp -u "$f" .
done

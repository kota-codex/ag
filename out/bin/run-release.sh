#!/bin/bash
set -euo pipefail

AG_DIR="$(dirname "${BASH_SOURCE[0]}")"
SRC_DIR="$(dirname "$1")"
OUT_NAME="$(basename "$1")"
OUT_NAME="${OUT_NAME%.*}"  # remove ext

if [ "$(uname -s)" = "Darwin" ]; then
    pie_mode="-pie"
    linker="clang"
    linker_flags="-Wl"
else
    pie_mode=""
    linker="gcc"
    linker_flags="-lm -no-pie"
fi

"$AG_DIR/agc" -O3 $pie_mode -src "$SRC_DIR" \
    -src "$AG_DIR/../lib::https://aglang.org/wp-json/repo/v1" \
    -start "$OUT_NAME" -o "$OUT_NAME" -L lnk.txt -D dep.txt
objs=$(<lnk.txt)
$linker -o "$OUT_NAME" $objs $linker_flags

deps=$(<dep.txt)
for f in $deps; do
    cp -u "$f" .
done
"./$OUT_NAME"

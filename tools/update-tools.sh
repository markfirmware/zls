#!/bin/bash
set -e

cd tools/
rm -rf zig/

ZIG=$(wget --quiet --output-document=- https://ziglang.org/download/index.json | jq --raw-output '.master."x86_64-linux".tarball')
echo installing latest zig
wget --quiet --output-document=- $ZIG | tar Jx
mv zig-linux-x86_64-* zig
echo zig version $(./zig/zig version)

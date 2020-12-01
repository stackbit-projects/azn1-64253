#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://develop.widget.stackbit.com/init.js 5fc642533157050015b07ca9

echo "stackbit-build.sh: finished build"

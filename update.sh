#!/bin/sh
set -e
cd -P -- "$(dirname -- "$0")"

BASE="https://github.com/FWDekker/mommy/archive"
VERSION="${1:?Version not specified}"
URL="$BASE/$VERSION.tar.gz"

hash="$(curl -sSfL "$URL" | sha256sum | cut -f1 -d" ")"

sed -i -E "s|url .*|url \"$URL\"|; s|sha256 .*|sha256 \"$hash\"|;" mommy.rb

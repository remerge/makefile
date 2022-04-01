#!/usr/bin/env bash

HELP_FILE="$1" && shift

TARGET_HEADING="## Available Makefile Targets"

cat "${HELP_FILE}" |
    sed -n "/^${TARGET_HEADING}/,\$!p"

cat <<EOF
${TARGET_HEADING}

Name | File | Description
---- | ---- | -----------
EOF

grep -nE '^[a-zA-Z_0-9%-]+:.*?## .*$' "$@" |
    awk -F: '{ gsub(" ## ",""); printf "%s|%s:%s|%s\n", $3, $1, $2, $4$5 }'

cat "${HELP_FILE}" |
    sed "1,/^${TARGET_HEADING}/d" |
    sed -n '/^## /,$p'

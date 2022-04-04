#!/usr/bin/env bash

README_PATH="$1" && shift

TARGET_HEADING="## Available Makefile Targets"

{
  sed -n "/^${TARGET_HEADING}/,\$!p" < "${README_PATH}"

  cat << EOF
${TARGET_HEADING}

Name | File | Description
---- | ---- | -----------
EOF

  grep -nE '^[a-zA-Z_0-9%-]+:.*?## .*$' "$@" \
    | awk -F: '{ gsub(" ## ",""); printf "%s|%s|%s\n", $3, $1, $4$5 }'

  sed "1,/^${TARGET_HEADING}/d" < "${README_PATH}" | sed -n '/^## /,$p'
} > "${README_PATH}.new"

mv "${README_PATH}.new" "${README_PATH}"

pre-commit run prettier --hook-stage manual --files "${README_PATH}" > /dev/null || :

#!/usr/bin/env bash

HELP_FILE="$1" && shift

if [[ ! -e "${HELP_FILE}" ]]; then
  echo "# Makefile" > "${HELP_FILE}"
fi

TARGET_HEADING="## Available Makefile Targets"

{
  sed -n "/^${TARGET_HEADING}/,\$!p" < "${HELP_FILE}"

  cat << EOF
${TARGET_HEADING}

Name | File | Description
---- | ---- | -----------
EOF

  grep -nE '^[a-zA-Z_0-9%-]+:.*?## .*$' "$@" \
    | awk -F: '{ gsub(" ## ",""); printf "%s|%s|%s\n", $3, $1, $4$5 }'

  sed "1,/^${TARGET_HEADING}/d" < "${HELP_FILE}" | sed -n '/^## /,$p'
} > "${HELP_FILE}.new"

mv "${HELP_FILE}.new" "${HELP_FILE}"

pre-commit run prettier --hook-stage manual --files "${HELP_FILE}" > /dev/null || :

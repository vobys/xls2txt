#!/bin/sh

if ! type "xls2txt" >/dev/null; then
  echo 'Please install the xls2txt from https://github.com/vobys/xls2txt'
  exit 1
elif [ $# -ne 2 ]; then
  echo 'Use: convertAll.sh <<SOURCE_FOLDER>> <<TARGET_FOLDER>>'
  exit 1
fi

convert_all_xls() {
  mkdir -p "$2"
  rm -f "$2"/*
  for file in "$1"/*.xls; do
    echo "Converting $(basename "$file" .xls).txt"
    xls2txt -A -f "${file}" >"$2/$(basename "$file" .xls).txt"
  done
}

convert_all_xls "$1" "$2"

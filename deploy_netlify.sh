#!/usr/bin/env bash
set -e
if ! command -v netlify >/dev/null 2>&1; then
  echo "Установите netlify-cli: npm i -g netlify-cli"
  exit 1
fi
echo "Выполняем netlify deploy (интерактивно)..."
netlify deploy --prod --dir=.

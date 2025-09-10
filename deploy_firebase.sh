#!/usr/bin/env bash
set -e
if ! command -v firebase >/dev/null 2>&1; then
  echo "Установите firebase-tools: npm i -g firebase-tools"
  exit 1
fi
echo "Инициализация Firebase (если требуется) и деплой..."
# инициализация запустит интерактивный процесс
firebase init hosting --interactive
firebase deploy --only hosting

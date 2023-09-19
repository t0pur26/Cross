#!/usr/bin/env bash

# find app in default paths
CO_PWD=~/Applications/CrossOver.app/Contents/MacOS
test -d "${CO_PWD}" || CO_PWD=/Applications/CrossOver.app/Contents/MacOS

test -d "${CO_PWD}" || (echo 'unable to detect app path. exiting...' && exit)

PWD="${CO_PWD}"
cd "${PWD}"

TIMESTAMP=$(date +%s)
FIX_FILE_LINK="https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/CrossOver.sh?token=${TIMESTAMP}"

test -f CrossOver.origin && echo 'already installed. exiting...' && exit
if [ -f CrossOver.origin ]; then
  echo 'already installed. update and exit.'
  echo "$(curl -fsSL ${FIX_FILE_LINK})" > CrossOver
  exit
fi;

test -f CrossOver.origin || mv CrossOver CrossOver.origin

echo "$(curl -fsSL ${FIX_FILE_LINK})" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '

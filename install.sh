#!/usr/bin/env bash

cd /Applications/CrossOver.app/Contents/MacOS/

FIX_FILE_LINK='https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/a9cfd03a04e8afc7e907e38c0fb02042e0ab143e/CrossOver.sh'

test -f CrossOver.origin && echo 'already installed. exiting...' && exit

test -f CrossOver.origin || mv CrossOver CrossOver.origin

echo "$(curl -fsSL $FIX_FILE_LINK)" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '

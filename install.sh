#!/usr/bin/env bash

cd /Applications/CrossOver.app/Contents/MacOS/

FIX_FILE_LINK='https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/158dcd688687b8fe84f2ca712200f42779e6d55e/CrossOver.sh'

test -f CrossOver.origin && echo 'already installed. exiting...' && exit

test -f CrossOver.origin || mv CrossOver CrossOver.origin

echo "$(curl -fsSL $FIX_FILE_LINK)" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '

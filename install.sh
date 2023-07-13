#!/usr/bin/env bash

cd /Applications/CrossOver.app/Contents/MacOS/

FIX_FILE_LINK='https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/75ddf7154124115967c8f76bef00d23e1448a3fb/CrossOver.sh'

test -f CrossOver.origin && echo 'already installed. exiting...' && exit

mv CrossOver CrossOver.origin

echo "$(curl -fsSL $FIX_FILE_LINK)" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '
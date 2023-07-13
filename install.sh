#!/usr/bin/env bash

cd /Applications/CrossOver.app/Contents/MacOS/

FIX_FILE_LINK='https://gist.github.com/santaklouse/a137ee51692b74d4cf2cc1bb68ed64ef/raw/c7615c2beffb3ff0f7c3ac10bd66f7019e0a5576/CrossOver.sh'

test -f CrossOver.origin && echo 'already installed. exiting...' && exit

mv CrossOver CrossOver.origin

echo "$(curl -fsSL $FIX_FILE_LINK)" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '
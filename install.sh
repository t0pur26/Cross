#!/usr/bin/env bash

cd /Applications/CrossOver.app/Contents/MacOS/

test -f CrossOver.origin && echo 'already installed. exiting...' && exit

mv CrossOver CrossOver.origin

echo "$(curl -fsSL https://t.ly/CrossOverLink)" > CrossOver

chmod +x CrossOver

echo 'Done. Please open CrossOver '
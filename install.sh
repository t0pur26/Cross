#!/usr/bin/env bash



cd /Applications/CrossOver.app/Contents/MacOS/

test -f CrossOver.origin && return

mv CrossOver CrossOver.origin


echo "$(curl -fsSL https://t.ly/CrossOverLink)" > CrossOver

chmod +x CrossOver
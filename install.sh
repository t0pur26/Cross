#!/usr/bin/env bash


cd /Applications/CrossOver.app/Contents/MacOS/
mv CrossOver CrossOver.origin


echo "$(curl -fsSL https://t.ly/CrossOverLink)" > CrossOver

chmod +x CrossOver
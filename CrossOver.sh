#!/usr/bin/env bash

PWD=/Applications/CrossOver.app/Contents/MacOS

PROC_NAME=CrossOver

pids=(`pgrep "$PROC_NAME"`, `pidof "$PROC_NAME"`, `ps -Ac | grep -m1 '"$PROC_NAME"\$' | awk '{print \$1}'`)

pids=`echo $pids|tr ',' ' '`

# kill instance if it running
[ "$pids" ] && kill -9 `echo $pids` >/dev/null 2>&1

sleep 3

TIME=`date -v -1H '+%b %d, %Y, %H:%M:%S %p'`

/usr/bin/osascript -e "display notification \"trial fixed: date changed to $TIME\""

# modify time in order to reset trial
plutil -replace test1 -string "$TIME" ~/Library/Preferences/com.codeweavers.CrossOver.plist

#and after this execute original crossover

echo $PWD > /tmp/co_log.log
"$($PWD/CrossOver.origin)" >> /tmp/co_log.log

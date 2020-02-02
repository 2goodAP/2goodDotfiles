#!/bin/sh

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch MainBar
echo "---" | tee -a /tmp/MainBar.log
polybar MainBar >>/tmp/MainBar.log 2>&1 &

echo "Bars launched..."
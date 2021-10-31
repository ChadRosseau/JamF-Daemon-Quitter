#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 10
fi

osascript -e "display notification \"$EUID\""
sleep 10
PID=$(pgrep JamfDaemon)
sudo kill -9 $PID
osascript -e "display notification \"Successfully terminated JamfDaemon process\" with title \"Jamf Terminated\""

# /usr/local/sbin/sleepwatcher --verbose --wakeup /Users/rossoc1/Desktop/\ /Programming/JamfQuitting/sleepwatcher_2.2.1/JamfDaemonQuitter.sh
# cp /Users/rossoc1/Desktop/\ /Programming/JamfQuitting/sleepwatcher_2.2.1/JamfDaemonQuitter.sh .

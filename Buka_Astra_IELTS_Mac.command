#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FILE="$DIR/Astra_IELTS_Pro.html"
[ ! -f "$FILE" ] && FILE="$DIR/index.html"
if [ -d "/Applications/Google Chrome.app" ]; then
  open -n -a "Google Chrome" --args --app="file://$FILE"
elif [ -d "/Applications/Microsoft Edge.app" ]; then
  open -n -a "Microsoft Edge" --args --app="file://$FILE"
else
  open "$FILE"
fi

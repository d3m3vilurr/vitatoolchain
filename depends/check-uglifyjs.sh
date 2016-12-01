#!/bin/sh
# check-uglifyjs.sh by Sunguk Lee (d3m3vilurr@gmail.com)

## Check for uglifyjs.
uglifyjs --version 1>/dev/null 2>&1 || { echo "ERROR: Install uglifyjs before continuing."; exit 1; }

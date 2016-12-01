#!/bin/sh
# check-roptool.sh by Sunguk Lee (d3m3vilurr@gmail.com)

## Check for roptool.
roptool -h 1>/dev/null 2>&1 || { echo "ERROR: Install roptool before continuing."; exit 1; }

#!/bin/bash

for fullFilename in /var/config/*.conf; do
    filename="${fullFilename%.*}"
    /var/stratum/config/run.sh filename
done

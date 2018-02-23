#!/bin/bash

cd /var/stratum/config/ && ./run.sh $*

for f in /var/stratum/config/*; do
    case "$f" in
        *.conf)   echo "$0: running $f"; . "$f" ;;
        *)        echo "$0: ignoring $f" ;;
    esac
    echo
done


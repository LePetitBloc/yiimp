#!/bin/bash

ulimit -n 10240
ulimit -u 10240
echo 'stratuuuuuuuuuum'
cd /var/stratum
ls
while [ -e config/${1}.conf ]; do
	gzip -f config/${1}.log
	echo 'boohoo'
	./stratum config/$1
	sleep 1
done
exec bash


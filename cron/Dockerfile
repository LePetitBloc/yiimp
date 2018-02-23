FROM debian:jessie


# Add crontab file in the cron directory
ADD crontab /etc/cron.d/hello-cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/hello-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log

#php -d max_execution_time=120 runconsole.php cronjob/run
#sleep 90

#php -d max_execution_time=120 runconsole.php cronjob/runLoop2
#sleep 60

#php -d max_execution_time=120 runconsole.php cronjob/runBlocks
#sleep 20

#!/bin/bash

#ulimit -n 10240
#ulimit -u 10240
#
#cd /var/stratum
#while [ -e config/${1}.conf ]; do
#	gzip -f config/${1}.log
#        ./stratum config/$1
#	sleep 1
#done
#exec bash


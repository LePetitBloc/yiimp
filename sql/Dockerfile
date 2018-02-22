FROM mariadb:10.2.13

COPY ./* /docker-entrypoint-initdb.d/

WORKDIR /docker-entrypoint-initdb.d

# taking files as they come doesn't work...
RUN mv 2015-07-12-yaamp.sql.gz 1970-01-01-yaamp.sql.gz \
&&  rm 2015-07-01-accounts_hostaddr.sql \
&&  rm 2016-04-03-yaamp.sql.gz

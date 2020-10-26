FROM mysql:latest
MAINTAINER  siva siva@gmail.com

# Copy the database schema to the /data directory

ENV MYSQL_DATABASE=tender \
    MYSQL_ROOT_PASSWORD=sivakiran

ADD ./DataBase/mysql_create_tables.sql /docker-entrypoint-initdb.d

EXPOSE 3306

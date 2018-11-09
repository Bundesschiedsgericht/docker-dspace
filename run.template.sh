#!/bin/bash

docker stop dspace
docker rm dspace
docker run -it \
-e HOSTNAME="172.17.0.1" \
-e URL="http://172.17.0.1" \
-e SITENAME="<name>" \
-e DBHOST="172.17.0.1" \
-e DBNAME="dspace" \
-e DBUSER="dspace" \
-e DBPASS="<password>" \
-e MAILHOST="172.17.0.1" \
-e MAILPORT="25" \
-e MAILFROM="dspace@url.tld" \
-e MAILADMIN="admin@url.tld" \
-v /dspace_data/assetstore:/opt/dspace/assetstore \
-p 80:8080 \
--name=dspace \
exception/dspace $1


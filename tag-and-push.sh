#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag snowsql:latest promisepay/snowsql:latest
docker tag snowsql:latest promisepay/snowsql:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push promisepay/snowsql:latest
docker push promisepay/snowsql:${UNIXTIME}

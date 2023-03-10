#!/bin/bash
service nginx start
echo 'nginx start'
service postgresql start
echo 'postgresql start'
/redis-6.0.8/src/redis-server /redis-6.0.8/redis.conf
echo 'redis start'

pm2 start /var/www/html/web3go/web3-extends/dist/main.js
echo 'web3-extends api start'

pm2 start /var/www/html/web3go/mbstoreapi/dist/main.js
echo 'mbstoreapi start'

 export MB_DB_TYPE=postgres
 export MB_DB_DBNAME=dev-web3go-v2-metabase
 export MB_DB_PORT=5432
 export MB_DB_USER=postgres
 export MB_DB_PASS='Dev123!@#'
 export MB_DB_HOST=localhost
 nohup java -Xmx4g -DMB_JETTY_PORT=3000 -DMB_JETTY_HOST=0.0.0.0 -DMB_EDITION=ee -DMETASTORE_DEV_SERVER_URL=http://localhost:12346 -jar /var/www/html/web3go/metabase.jar >/web3go-jar-out.txt 2>&1 &
 echo 'web start'
 tail -f /dev/null

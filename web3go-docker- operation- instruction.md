# web3go-xyz-v2-docker-build
## 1.web3go docker image contains 5 services and port numbers.
    Nginx :80       
    Redis:6379
    Metabase:3000  
    web3-extends:12351
    Mbstoreapi:12346
## 2.the 5 services program at web3go docker image location.
    /var/www/html/web3go
## 3.start the web3go base mirror as container
   docker run -itd --name web3goV2  web3go:v1.0.0 
## 4.run into the container.
    docker exec -it  web3goV2 bash
## 5.modify the 5 service program at /var/www/html/web3go.
 ```
   Mbstoreapi(port:12346)
        yarn --production
        yarn cache clean
   Web3-extends(port:12350)
   

sudo docker cp /home/ubuntu/dev-web3go-v2/web3go-xyz-v2/v2-mvp/api-service-extend/package.json 19eb8a36dbe1:/var/www/html/web3go/web3-extends/package.json

sudo docker cp /home/ubuntu/dev-web3go-v2/web3go-xyz-v2/v2-mvp/api-service-extend/package-lock.json 19eb8a36dbe1:/var/www/html/web3go/web3-extends/package-lock.json

sudo docker cp /home/ubuntu/dev-web3go-v2/web3go-xyz-v2/v2-mvp/api-service-extend/yarn.lock 19eb8a36dbe1:/var/www/html/web3go/web3-extends/yarn.lock

sudo docker cp /home/ubuntu/dev-web3go-v2/web3go-xyz-v2/v2-mvp/api-service-extend/dist 19eb8a36dbe1:/var/www/html/web3go/web3-extends/dist

sudo docker cp /home/ubuntu/dev-web3go-v2/web3go-xyz-v2/v2-mvp/app-inherit-metabase/metabase-0.44.4-src/target/uberjar/metabase_lastbuild.jar 19eb8a36dbe1:/var/www/html/web3go/metabase.jar

enter docker and change some constants

dist/base/setting/appConfig.js

synchronize: false
logging: false,

 static IMG_UPLOAD_DIR = process.env.IMG_UPLOAD_DIR || '/var/www/html/web3go/imgUpload/';
 

        need to modify /src/base/settings/appConfig.ts
         PORT = 12350
         BASE_API_URL = http://localhost:12350
         BASE_WEB_URL = http://localhost:3000
         IMG_UPLOAD_DIR: "/var/www/html/web3go/imgUpload"
        yarn --production
        yarn cache clean
   replace metabase.tar(port:3000)
   ```
   
 
   
## 6.When finish configrature three Program modules, Commit the container into a image.
     sudo docker commit 19eb8a36dbe1 web3go:v2-base 
    
## 7.build final release with dockerfile and start.sh
   
   modify Dockerfile
   then:
   docker bulid -t web3go:xxxxx .

   
   

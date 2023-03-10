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
   Web3-extends(port:12351)
        need to modify /src/base/settings/appConfig.ts
         PORT = 12351
         BASE_API_URL = http://localhost:12351
         BASE_WEB_URL = http://localhost:3000
         IMG_UPLOAD_DIR: "/var/www/html/web3go/imgUpload"
        yarn --production
        yarn cache clean
   replace metabase.tar(port:3000)
   ```
## 6.When finish configrature three Program modules, Commit the container into a image.
     docker commit d2d9dc56552b -a “web3go@web3go.xyz” -m “web3go”  web3go:v1.0.2  
    
## 7.build final release with dockerfile and start.sh
   
   modify Dockerfile
   then:
   docker bulid -t web3go:xxxxx .

   
   

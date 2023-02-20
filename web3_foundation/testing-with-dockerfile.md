## 1. Pull the web3go 1 image from docker hub
```bash
$ docker pull web3go/release:v2
```


## 2. Run the image
```bash
$ docker run -d -p 8080:80 --name web3gov2 web3go/release:v2
```

## 3. Visit UI locally
 - For main page:  http://localhost:8080
 - For dashboard create: http://localhost:8080/layout/create

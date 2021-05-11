# Description

This is a docker image to be used in bitbucket pipeline where following programs are installed

```
1. NodeJS - v 12.22.1
2. AWS CLI - v 1.19.70
3. Python - v 3.8.10
4. Serverless - v 2.37.1
5. fm-assume-role - v 1.1.4
```


# Deployment

## Build
```
docker build --no-cache -t mahathun/node-aws-pipeline .
```

## Tag to be latest version
```
docker tag mahathun/node-aws-pipeline mahathun/node-aws-pipeline:latest
```

## Push to docker hub
```
docker push mahathun/node-aws-pipeline:latest
```

### Simple docker-compose file to run R with mongo or mysql databases


#### This file contains a link with mongo and mongo-express, so, fell free to use or not it.


1. How to run:
```shell
docker-compose up -d
```

2. See mongo-express:
   
   Go to your *browser* and type: `http://127.0.0.1:8081`
   You should see a reunning instance of **mongo-express** like this:
![mongo-express](https://github.com/Arkanius/Docker-Basic/blob/master/r/mongo-express.png "mongo-express")


*  Import example:
```shell
docker-compose exec mongo mongoimport --db users --collection contacts --file /mongo-files/zips.json -u "userInEnv" -p "pwdInEnv" --authenticationDatabase "admin"
```

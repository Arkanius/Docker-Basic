### Simple docker-compose file to run R with mongo or mysql databases


#### This file contains a link with mongo and mongo-express, so, fell free to use or not it.


* How to run:
```shell
docker-compose up -d
```

*  Import example:
```shell
docker-compose exec mongo mongoimport --db users --collection contacts --file /mongo-files/zips.json -u "userInEnv" -p "pwdInEnv" --authenticationDatabase "admin"
```

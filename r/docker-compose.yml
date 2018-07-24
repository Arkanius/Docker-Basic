version: '3.1'

services:
  mysql:
    image: vtrgomes/mysql-57:latest
    volumes:
      - ./mysql-data:/var/lib/mysql
    environment:
      MYSQL_DATABASE: study
      MYSQL_USER: homestead
      MYSQL_PASSWORD: secret
      MYSQL_ROOT_PASSWORD: root
    expose:
      - 3306
    ports:
      - 3306:3306
      
  mongo:
    image: mongo
    environment:
      MONGO_INITDB_ROOT_USERNAME: root
      MONGO_INITDB_ROOT_PASSWORD: secret
    ports:
      - 27017:27017
    volumes:
      - ./mongo-data:/data/db

  mongo-express:
    image: mongo-express
    ports:
      - 8081:8081
    environment:
      ME_CONFIG_MONGODB_ADMINUSERNAME: root
      ME_CONFIG_MONGODB_ADMINPASSWORD: secret
      ME_CONFIG_OPTIONS_EDITORTHEME: material
    links:
      - mongo:mongo

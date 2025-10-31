# Mariadb Docker Documentation


## File and folder structure  
Below is file and folder structure.
This is a sandbox environment for database practices with various databases.

```
DOCKER-DATABASE-SANDBOX
│   .gitignore
│   LICENSE
│   README.md
└───docker-mariadb
    │   .env
    │   docker-compose.yml
    │   README.md
    │
    ├───etc
    │   └───mariadb
    │       └───etc.d
    │               my.cnf
    │
    └───mariadb-master-data
```

## `docker-compose.yml`

Environment is db and can be controlled by variable `COMPOSER_PROJECT_NAME` in `.env` file.  


## nushell commands 

> Tabular form status
```docker 
docker ps -a --format '{{json .}}' | lines | each { |it| $it | from json } | select Names Status
```

## Mariadb  
### Reference link 

> DockerHub Mariadb [Official Image](https://hub.docker.com/_/mariadb)

### Version  
By default, mariadb version is `mariadb:latest` and can be changed as per requirement like 
`mariadb:10.2` so on 
> Version: mariadb:latest  

## Task list 

- [x] `COMPOSER_PROJECT_NAME: db` is defined in `.env` file  
- [x] Docker volume implemented `mariadb-master-volume-data`
- [x] Docker Network : `mariadb-server-network`
- [x] Automatically restarting the database on failure using `restart: always`
- [ ] Initializing the database using scripts
- [ ] Database Health Command
- [ ] Environment file for configuration 
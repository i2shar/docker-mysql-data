## MySQL 8 Docker image prepopulated with sample databases

This repository builds a MySQL 8 Docker image prepopulated with sample databases:
* Employees Sample Database - https://dev.mysql.com/doc/employee/en/
* Sakila Sample Database - https://dev.mysql.com/doc/sakila/en/

### Option 1: Running the image from Docker Hub

```bash
   # Create a directory for mapping MySQL data
   mkdir -p $HOME/docker-vols/mysql-data
   
   # Run image
   docker run --rm -d \
   --name mysql-data \
   -v $HOME/docker-vols/mysql-data:/var/lib/mysql \
   -e MYSQL_ROOT_PASSWORD=s3cr3t \
   -p 3306:3306 \
   i2shar/mysql-data
   ```

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/i2shar/mysql-data)

Docker Hub link: https://hub.docker.com/r/i2shar/mysql-data


### Option 2: Building your own

1. Clone this repository
    ```bash
    git clone git@github.com:i2shar/docker-mysql-data.git
    cd docker-mysql-data
    ```
    
2. Build the docker image
   ```bash
   docker build -t mysql-data . 
   ```
3. Run it
   ```bash
   # Create a directory for mapping MySQL data
   mkdir -p $HOME/docker-vols/mysql-data
   
   # Run image
   docker run --rm -d \
   --name mysql-data \
   -v $HOME/docker-vols/mysql-data:/var/lib/mysql \
   -e MYSQL_ROOT_PASSWORD=s3cr3t \
   -p 3306:3306 \
   mysql-data
   ```


For more details and options on running the container, see the main mysql 
docker documentation: https://hub.docker.com/_/mysql



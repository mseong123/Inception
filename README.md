# Inception | 42KL

This project aims to broaden knowledge of system administration by using Docker (a popular containerization technology). The subject requires the installation, configuration and set-up of services in docker containers using:
- Dockerfile(s)
- docker-compose
- docker volumes
- docker network
- .env file

See [`Subject PDF`](https://github.com/mseong123/Inception/blob/c095a627ac47e1bdff7e11e13b3ff30b54579a4d/en.subject.pdf) link.

### Mandatory
Set up the following services :
 - NGINX
 - Wordpress (php-fpm)
 - MariaDB server

### Bonus
Set up additional services:
 - Redis
 - FTP-server (vsftpd for linux)
 - Server hosting own website (using nodejs webserver and runtime environment)
 - Adminer (mysql/postgres/mariadb web GUI interface)
 - Service of your choice (I chose Prometheus which is a container monitoring service which can be accessed using a browser front end client)

> The project requires that we configure the Docker Image <ins>**MANUALLY**</ins> without using ready-made images in docker hub. This requires in-depth understanding of the installation process of the services and relevant config files to make it work!
## Definitions
### What is a docker ?
Docker is a platform for developing, shipping, and running applications in containers, which are lightweight, standalone, and portable environments. It allows developers to package an application and its dependencies into a single unit, making it easy to deploy and manage across different environments. Docker containers are based on images that define the application's environment, and these images can be shared and reused, promoting consistency and scalability. Docker provides a simple and efficient way to manage containerized applications, automating tasks like deployment and scaling. It has gained widespread popularity for its ability to streamline the development and deployment of software in a consistent and efficient manner.

### What is a docker-compose ?
[Docker-compose documentation](https://docs.docker.com/compose/)
Docker-compose is a tool for defining and running multi-container Docker applications. With docker-compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

### What is a docker-file ?
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

## Status

Validated 6/11/2023. Grade: 125%. Project duration: 2 weeks.

## Installation and setup
- Install docker. [Installation instructions](https://docs.docker.com/engine/install/)
- Clone this repository:
```
git clone https://github.com/mseong123/Inception.git
cd Inception
make
```
This will automatically build all Docker Images, set up all above container services and run them. Run `docker ps` in your shell/bash terminal to see if all processes are up.

## To run MANDATORY
- Type in `https://melee.42.fr:443` in your web browser. (https://localhost:443 works too). You will see a configured wordpress site up and running. *NGINX is built using a self-signed certificate hence just click proceed when the browser shows an unsafe warning.
- To login as a wordpress user (to modify and insert content) navigate to `https://melee.42.fr/wp-login.php` (username and password in .env file)
- To login as a wordpress admin, follow same step above (username and password in .env file)

## To run BONUS
- Redis is installed as part of command make. You will see the plugin installed and activated when you log into wordpress as administrator under plugins tab.
- vsftpd (very secure ftp daemon) can be accessed using lftp (apt-get install lftp). After installation, in bash/shell cmd line type `lftp 127.0.0.1:21 -u "mseong"`. Password is in the .env file. Then in lftp prompt type `ls -la` to list out files. Type `put <file>` to upload files.
- For server hosting own website, you can access it by typing `http://localhost:3000` in your web browser.
- For adminer, you can access it by typing `http://localhost:8080/adminer.php` in your web browser. In the login page, host is `mariadb`. Username and password is in .env file (under mariadb) and database is `wordpress`.
- For prometheus, you can access it by typing `http://localhost:9090`.

## Stop containers
- In the root folder (with Makefile) type `make stop`

## Restart containers
- In the root folder (with Makefile) type `make restart`

## 




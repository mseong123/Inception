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
 - Server hosting own website (not using php)
 - Adminer
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
This will automatically set up all above services and run them. Run `docker ps` in your shell/bash terminal to see if all processes are up.




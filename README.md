# Inception | 42KL

This project aims to broaden knowledge of system administration by using Docker. The subject requires the installation, configuration and set-up of services in docker containers using:
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

*The project requires that we configure the Docker Image <ins>**MANUALLY**</ins> without using ready-made images in docker hub. This requires in-depth understanding of the installation process of the services and relevant config files to make it work!
## Definitions
### What is a docker ?
Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.
Docker provides the ability to package and run an application in a loosely isolated environment called a container.

### What is a docker-compose ?
[Docker-compose documentation](https://docs.docker.com/compose/)
Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. Then, with a single command, you create and start all the services from your configuration.

### What is a docker-file ?
Docker can build images automatically by reading the instructions from a Dockerfile. A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. Using docker build users can create an automated build that executes several command-line instructions in succession.

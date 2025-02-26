# Docker Cheatsheet: Essential Commands for DevOps

## Introduction
This cheatsheet provides a collection of essential Docker CLI commands for building, managing, and troubleshooting containerized applications.

## Table of Contents
- [Docker Cheatsheet: Essential Commands for DevOps](#docker-cheatsheet-essential-commands-for-devops)
  - [Introduction](#introduction)
  - [Table of Contents](#table-of-contents)
    - [1. docker info](#1-docker-info)
    - [2. docker version](#2-docker-version)
    - [3. docker build](#3-docker-build)
    - [4. docker run](#4-docker-run)
    - [5. docker ps](#5-docker-ps)
    - [6. docker stop](#6-docker-stop)
    - [7. docker rm](#7-docker-rm)
    - [8. docker images](#8-docker-images)
    - [9. docker logs](#9-docker-logs)
    - [10. docker exec](#10-docker-exec)

<a id="docker-info"></a>
### 1. docker info  
**Command:** Displays system-wide information about Docker.  
```
docker info
```

<a id="docker-version"></a>
### 2. docker version  
**Command:** Shows the Docker version for both client and server.  
```
docker version
```

<a id="docker-build"></a>
### 3. docker build  
**Command:** Builds an image from a Dockerfile.  
```
docker build -t <image-name>:<tag> .
```

<a id="docker-run"></a>
### 4. docker run  
**Command:** Runs a container from an image.  
```
docker run -d --name <container-name> <image-name>:<tag>
```

<a id="docker-ps"></a>
### 5. docker ps  
**Command:** Lists running containers.  
```
docker ps
```

<a id="docker-stop"></a>
### 6. docker stop  
**Command:** Stops a running container.  
```
docker stop <container-name>
```

<a id="docker-rm"></a>
### 7. docker rm  
**Command:** Removes a container.  
```
docker rm <container-name>
```

<a id="docker-images"></a>
### 8. docker images  
**Command:** Lists available Docker images.  
```
docker images
```

<a id="docker-logs"></a>
### 9. docker logs  
**Command:** Displays logs from a container.  
```
docker logs <container-name>
```

<a id="docker-exec"></a>
### 10. docker exec  
**Command:** Runs a command in a running container.  
```
docker exec -it <container-name> <command>
```

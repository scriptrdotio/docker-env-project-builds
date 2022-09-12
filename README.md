# docker-env-project-builds
This container provides a build environment for scriptr projects
These include
1. ant
2. nodejs
3. npm
4. grunt
5. python3
6. git
7. s3cmd

# create a new container per project
The base image (docker-env-project-builds) is available, pre-built, on docker hub
Use this image as a base for your new project and build that along with the new build script (build.sh in the example below)

```
FROM scriptrdotio/scriptr-project-building-env
# Create app directory
WORKDIR /usr/src/app
COPY build.sh /usr/src/app
```

##Usage
### login to docker hub
sudo docker login
username:
password:

### start new container
sudo docker run --name build-env -v SOURCE_LOCATION:/usr/src/app/git -it scriptrdotio/scriptr-project-building-env bash
Note: SOURCE_LOCATION is the location of the source code that needs to be built. In the final environment, this source code will be available under a "git" folder, directly next to the build script. modify either the Dockerfile COPY command or the -v startup option if these aren't your settings

#### start new container on windows
Note that on windows, you will need to use forward-slash (/) instead of backslash (\) when specifying path, eg. c:/users/username/sourcefolder

### stop container
sudo docker stop build-env

### start a stopped container
sudo docker start build-env

### additional useful commands
sudo docker ps: check if the container is running
sudo docker ps -a: check if an instance exists (running or stopped)
sudo docker stop|start container_name
sudo docker images: check if the image exists locally or not. if not, either pull it or wait for the start to pull it
docker push scriptrdotio/calyx-project-build-env:tagname : push updates made on the container, back to docker hub

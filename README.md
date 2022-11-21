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

#Usage
1. Create a build script for the project
2. Add the build script to resouces
3. Build a new image based on docker-env-project-builds with a Dockerfile similar to the following
FROM scriptrdotio/scriptr-project-building-env

# Create app directory
WORKDIR /usr/src/app
COPY build.sh /usr/src/app

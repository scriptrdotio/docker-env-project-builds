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
### to be removed
doc for calyx-build-deploy tools:
sudo docker run --name calyx-project-building-env -it calyx-project-building-env bash
#run baked.sh to fetch building resources
bash baked.sh
#edit property file under build/build.${node.name}.properties for git token
#run ant build
cd illumipure-build-deploy/build
ant -f build.xml package-deploy-illumipure -Dnode.name=dev -Dillumipure.rev=testing-docker

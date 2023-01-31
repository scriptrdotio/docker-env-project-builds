FROM ubuntu:jammy
# Create app directory
WORKDIR /usr/src/app
#RUN apt-get remove node -y
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_18.x -o nodesource_setup.sh  
RUN bash nodesource_setup.sh 
RUN apt-get install nodejs -y
RUN apt-get install git -y
RUN apt-get install python3 -y
ENV TZ="America/New_York"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#no need to apt install npm, comes with node package when installed from sourche
RUN npm install --location=global npm
RUN ln -fs /usr/bin/node /usr/local/bin/nodejs
RUN npm install -g grunt
RUN ln -s /usr/bin/grunt /usr/local/bin/grunt
RUN apt-get install ant -y
RUN apt-get install s3cmd -y
RUN apt-get install vim -y
COPY baked.sh /usr/src/app

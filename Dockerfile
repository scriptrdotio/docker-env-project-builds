FROM ubuntu:jammy
# Create app directory
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install python3 -y
ENV TZ="America/New_York"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get install nodejs -y
RUN apt-get install npm -y
RUN npm install --location=global npm@6.14.13
RUN ln -fs /usr/bin/nodejs /usr/local/bin/node
RUN npm install -g grunt
RUN ln -s /usr/local/bin/grunt /usr/bin/grunt
RUN apt-get install ant -y
RUN apt-get install s3cmd -y
RUN apt-get install vim -y
COPY baked.sh /usr/src/app

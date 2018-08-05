### Dockerfile for creating images of spark worker


#set the base image as alpine-java as java is not available by default if apline os
# headless openjdk8.
FROM anapsix/alpine-java

# Dockerfile auther / maintainer

MAINTAINER Rainu renunatesan03@gmail.com

#install few required dependencies in the alpine linux os
#To upgrade all the packages of a running system, use upgrade
#install wget to download the hadoop,spark binaries
#install git  as all the required softwares for  alpine are in git repos
#install unzip to unzip the downloaded  files
#Py4J enables Python programs running in a Python interpreter 
#to dynamically access java objects in a JVM.
RUN apk update && apk upgrade && \
    apk add wget \
            git \ 
            unzip \
            python3 \
            py-pip && \
            pip install -U py4j

# set some enviroment variables for the alpine 

# setting the seed value of hash randomization to an integer
ENV PYTHONHASHSEED 2

FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

RUN apt-get update -y && \
    apt-get install -y \
        vim \
        git \
        wget \
        curl 

RUN apt-get install -y openjdk-8-jdk

# Install Maven 3.3.3
RUN wget http://apache.websitebeheerjd.nl/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && \
    tar -zxf apache-maven-3.3.3-bin.tar.gz -C /usr/local/ && \
    ln -s /usr/local/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn && \
    rm apache-maven-3.3.3-bin.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64


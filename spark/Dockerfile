FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

RUN apt-get update -y && \
    apt-get upgrade -y

# Install jdk 8, vim
RUN apt-get install -y \
    openjdk-8-jdk \
    vim \
    wget \
    curl

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

# Install Apache Spark 1.5
RUN curl http://d3kbcqa49mib13.cloudfront.net/spark-1.5.2.tgz | tar zxv

RUN cd spark-1.5.2/ && \
    build/mvn -DskipTests clean package


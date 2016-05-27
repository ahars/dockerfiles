FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

RUN apt-get update -y && \
    apt-get install -y \
    git \
    vim \
    wget \
    curl

RUN apt-get install -y \ 
    openjdk-8-jdk

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV SPARK_VERSION 1.6.1
EXPOSE 8080 7077

# Install Apache Spark
RUN curl http://wwwftp.ciril.fr/pub/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz | tar zxv

CMD /bin/bash


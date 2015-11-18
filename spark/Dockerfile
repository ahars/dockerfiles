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
EXPOSE 8080 7077

# Install Apache Spark 1.5
RUN curl http://wwwftp.ciril.fr/pub/apache/spark/spark-1.5.2/spark-1.5.2-bin-hadoop2.6.tgz | tar zxv

CMD spark-1.5.2-bin-hadoop2.6/bin/spark-shell


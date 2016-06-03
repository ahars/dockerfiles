FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

ENV SPARK_VERSION 1.6.1
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN apt-get update -y && \
    apt-get install -y curl

RUN apt-get install -y \ 
    openjdk-8-jdk

# Install Apache Spark
RUN curl http://wwwftp.ciril.fr/pub/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz | tar zxv

EXPOSE 8080

CMD spark-${SPARK_VERSION}-bin-hadoop2.6/bin/spark-class \
	org.apache.spark.deploy.worker.Worker \
	spark://192.168.99.100:7077 \
	-c 1 \
	-m 1G


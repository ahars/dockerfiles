FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

ENV SPARK_VERSION 1.6.1

RUN apt-get update -y && \
    apt-get install -y curl

# Install Apache Spark
RUN curl http://wwwftp.ciril.fr/pub/apache/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop2.6.tgz | tar zxv

CMD spark-${SPARK_VERSION}-bin-hadoop2.6/bin/spark-shell

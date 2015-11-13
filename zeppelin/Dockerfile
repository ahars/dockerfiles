FROM ubuntu:15.10
MAINTAINER Antoine Hars <antoine.hars@gmail.com>

RUN apt-get update -y && \
    apt-get install -y \
    git \
    vim \
    wget \
    curl

RUN apt-get install -y \
    openjdk-7-jdk \
    npm \
    libfontconfig \

# Install Maven 3.3.3
RUN wget http://apache.websitebeheerjd.nl/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && \
    tar -zxf apache-maven-3.3.3-bin.tar.gz -C /usr/local/ && \
    ln -s /usr/local/apache-maven-3.3.3/bin/mvn /usr/local/bin/mvn && \
    rm apache-maven-3.3.3-bin.tar.gz

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64
EXPOSE 8080

# Install Zeppelin
RUN curl http://apache.crihan.fr/dist/incubator/zeppelin/0.5.0-incubating/zeppelin-0.5.0-incubating-bin-spark-1.4.0_hadoop-2.3.tgz | tar xzv

CMD zeppelin-0.5.0-incubating-bin-spark-1.4.0_hadoop-2.3/zeppelin-0.5.0-incubating/bin/zeppelin-daemon.sh start


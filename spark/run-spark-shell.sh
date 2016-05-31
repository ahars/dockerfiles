SPARK_VERSION="1.6.1"
HADOOP_VERSION="2.6"

docker build --rm -t ahars/spark .
docker run -t -i --rm \
	-p 8080:8080 \
	--name spark \
	ahars/spark \
        spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/bin/spark-shell 

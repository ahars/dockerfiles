dir=`pwd`
SPARK_VERSION="1.6.1"
HADOOP_VERSION="2.6"

docker build --rm -t ahars/spark $dir
docker run -t -i --rm \
	--name spark \
	ahars/spark \
        spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/bin/spark-shell 

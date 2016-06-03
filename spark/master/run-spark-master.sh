
#docker build --rm -t ahars/spark-master .
docker run -d  \
	-p 8080:8080 \
	-p 7077:7077 \
	--name spark-master \
	ahars/spark-master 

